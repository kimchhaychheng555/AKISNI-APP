import 'dart:io';

import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../views/location_views/location_view.dart';

class ManageController extends GetxController {
  var isLoading = false.obs;
  var isNetworkImage = false.obs;
  var locationID = Rxn<String>();

  final formKey = GlobalKey<FormState>();
  // Var Location Temp
  var dkCtrl = TextEditingController();
  var powerCtrl = TextEditingController();
  var typeCtrl = TextEditingController();
  var installDate = ''.obs;
  var customerNameCtrl = TextEditingController();
  var companyNameCtrl = TextEditingController();
  var latitudeCtrl = TextEditingController();
  var longtitudeCtrl = TextEditingController();
  var locationCtrl = TextEditingController();
  // End
  var tempImageStr = "".obs;
  var unit8List = Rxn<Uint8List>();

  void onSelectChangeDate(String? value) {
    installDate(value);
  }

  final List<String> listTypes = ['LV', 'CG', 'LD'];

  @override
  void onInit() {
    var location = Get.arguments;

    if (location != null) {
      isNetworkImage(true);
      LocationListModel temp = location;
      locationID(temp.id);
      installDate(temp.installDate);
      dkCtrl.text = temp.title ?? "";
      powerCtrl.text = temp.power ?? "";
      typeCtrl.text = temp.type ?? "";
      customerNameCtrl.text = temp.name ?? "";
      companyNameCtrl.text = temp.company ?? "";
      latitudeCtrl.text = (temp.latitude ?? "").toString();
      longtitudeCtrl.text = (temp.longitude ?? "").toString();
      locationCtrl.text = temp.location ?? "";
      tempImageStr(temp.image);
    }

    super.onInit();
  }

  void onSave() async {
    isLoading(true);

    var uploadImageResp = kIsWeb
        ? await ResponsitoryServices.upload(
            rawFile: unit8List.value,
            name: tempImageStr.value,
          )
        : await ResponsitoryServices.upload(path: tempImageStr.value);

    if (uploadImageResp.statusCode == 200) {
      var locate = LocationListModel(
        id: locationID.value ?? const Uuid().v4(),
        title: dkCtrl.text,
        power: powerCtrl.text,
        type: typeCtrl.text,
        installDate: installDate.value,
        name: customerNameCtrl.text,
        company: companyNameCtrl.text,
        latitude: double.tryParse(latitudeCtrl.text),
        longitude: double.tryParse(longtitudeCtrl.text),
        location: locationCtrl.text,
        image: uploadImageResp.body,
      );
      if (formKey.currentState!.validate()) {
        if (locationID.value != null) {
          var resp = await ResponsitoryServices.updateLocation(locate);
          if (resp.statusCode == 201 || resp.statusCode == 200) {
            AppAlert.successAlert(title: "update_successfully".tr);
            Get.offNamed(LocationView.routeName);
          } else {
            AppAlert.errorAlert(title: "save_error".tr);
          }
        } else {
          var resp = await ResponsitoryServices.insertLocation(locate);
          if (resp.statusCode == 201 || resp.statusCode == 200) {
            AppAlert.successAlert(title: "save_successfully".tr);
            Get.offNamed(LocationView.routeName);
          } else {
            AppAlert.errorAlert(title: "save_error".tr);
          }
        }
      }
    }

    var locationListCtrl = Get.find<LocationController>();
    locationListCtrl.onInit();
    isLoading(false);
  }

  void onUploadImage() async {
    isNetworkImage(false);
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;

      if (kIsWeb) {
        unit8List(file.bytes!);
        tempImageStr(file.name);
      } else {
        tempImageStr(file.path);
      }
    } else {}
  }

  File get getImageFile {
    if (kIsWeb) {
      return File.fromRawPath(unit8List.value!);
    } else {
      return File(tempImageStr.value);
    }
  }
}
