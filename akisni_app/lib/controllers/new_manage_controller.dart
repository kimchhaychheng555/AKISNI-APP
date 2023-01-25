import 'package:akisni_app/controllers/manage_controller.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/services/telegram_service.dart';
import 'package:akisni_app/views/manage_views/components/pin_mark_get_location.dart';
import 'package:akisni_app/views/manage_views/manage_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class NewManageController extends GetxController {
  var isLoading = false.obs;
  var locationID = Rxn<String>();

  final formKey = GlobalKey<FormState>();
  var adminScriptCtrl = TextEditingController();
  // Var Location Temp
  var dkCtrl = TextEditingController();
  var powerCtrl = TextEditingController();
  var typeCtrl = TextEditingController();
  var installDate = ''.obs;
  var customerNameCtrl = TextEditingController();
  var companyNameCtrl = TextEditingController();
  var depositCtrl = TextEditingController();
  var latitudeCtrl = TextEditingController();
  var longtitudeCtrl = TextEditingController();
  var locationCtrl = TextEditingController();
  // End
  var tempImageStr = "".obs;
  var imagePath = "".obs;
  var unit8List = Rxn<Uint8List>();

  //
  var manageCtrl = Get.find<ManageController>();

  void onSelectChangeDate(String? value) {
    installDate(value);
  }

  @override
  void onInit() {
    var location = Get.arguments;

    if (location != null) {
      LocationListModel temp = location;
      locationID(temp.id);
      installDate(temp.installDate);
      dkCtrl.text = temp.title ?? "";
      powerCtrl.text = temp.power ?? "";
      typeCtrl.text = temp.type ?? "";
      customerNameCtrl.text = temp.name ?? "";
      companyNameCtrl.text = temp.company ?? "";
      depositCtrl.text = temp.deposit ?? "";
      latitudeCtrl.text = (temp.latitude ?? "").toString();
      longtitudeCtrl.text = (temp.longitude ?? "").toString();
      locationCtrl.text = temp.location ?? "";
      tempImageStr(temp.image);
    }

    super.onInit();
  }

  void onSave() async {
    isLoading(true);

    if (formKey.currentState!.validate()) {
      var locate = LocationListModel(
        id: locationID.value ?? const Uuid().v4(),
        title: dkCtrl.text,
        power: powerCtrl.text,
        type: typeCtrl.text,
        installDate: installDate.value,
        name: customerNameCtrl.text,
        company: companyNameCtrl.text,
        deposit: depositCtrl.text,
        latitude: double.tryParse(latitudeCtrl.text),
        longitude: double.tryParse(longtitudeCtrl.text),
        location: locationCtrl.text,
        image: tempImageStr.value,
      );

      if (locationID.value != null) {
        var resp = await ResponsitoryServices.updateLocation(locate);

        if (resp.statusCode == 201 || resp.statusCode == 200) {
          TelegramService.sendMessage(
            "Updated Location",
            locate,
          );

          AppAlert.successAlert(title: "update_successfully".tr);
          Get.offAllNamed(ManageView.routeName);
        } else {
          AppAlert.errorAlert(title: "save_error".tr);
        }
      } else {
        var resp = await ResponsitoryServices.insertLocation(locate);
        if (resp.statusCode == 201 || resp.statusCode == 200) {
          TelegramService.sendMessage(
            "Add Location",
            locate,
          );
          await AppService.onLoadLocation();
          AppAlert.successAlert(title: "save_successfully".tr);
          Get.offAllNamed(ManageView.routeName);
        } else {
          AppAlert.errorAlert(title: "save_error".tr);
        }
      }
    }

    manageCtrl.onInit();
    isLoading(false);
  }

  void onUploadImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;

      imagePath(file.path);

      var uploadImageResp =
          await ResponsitoryServices.upload(path: imagePath.value);

      if (uploadImageResp.statusCode == 200) {
        tempImageStr(uploadImageResp.body);
        AppAlert.successAlert(title: "upload_success".tr);
      } else {
        tempImageStr("");
        AppAlert.errorAlert(title: "upload_error".tr);
      }
      update();
    }
  }

  void onGenerateData() async {
    isLoading(true);

    var split = adminScriptCtrl.text.split('^');
    if (split.length == 9) {
      dkCtrl.text = split[0];
      powerCtrl.text = split[1];
      typeCtrl.text = split[2];
      locationCtrl.text = split[3];
      customerNameCtrl.text = split[4];
      installDate(split[5]);
      companyNameCtrl.text = split[6];
      latitudeCtrl.text = split[7];
      longtitudeCtrl.text = split[8];

      AppAlert.successAlert(title: "success_generate".tr);
    } else {
      AppAlert.errorAlert(title: "wrong_format".tr);
    }

    isLoading(false);
  }

  void onSearchMap() {
    Get.to(
      () => PinMarkGetLocationWidget(
        onSubmitMap: (lat, long) {
          latitudeCtrl.text = "$lat";
          longtitudeCtrl.text = "$long";
        },
      ),
    );
  }
}
