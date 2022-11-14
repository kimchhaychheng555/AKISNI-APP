import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/views/user_list_views/user_list_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../services/responsitory_services.dart';

class NewUserController extends GetxController {
  var isLoading = false.obs;
  var userID = Rxn<String>();

  final formKey = GlobalKey<FormState>();
  // Var Location Temp
  var fullNameCtrl = TextEditingController();
  var userNameCtrl = TextEditingController();
  var passWordCtrl = TextEditingController();
  var phoneNumberCtrl = TextEditingController();
  var role = "".obs;
  // End
  var tempImageStr = "".obs;
  var imagePath = "".obs;
  var unit8List = Rxn<Uint8List>();

  List<String> roleList = ["Admin", "Moderator", "User"];

  @override
  void onInit() {
    var user = Get.arguments;

    if (user != null) {
      UserModel temp = user;
      userID(temp.id);
      userNameCtrl.text = temp.username ?? "";
      passWordCtrl.text = temp.password ?? "";
      fullNameCtrl.text = temp.fullName ?? "";
      phoneNumberCtrl.text = temp.phoneNumber ?? "";
      role(temp.role);
      tempImageStr(temp.profile);
    }

    super.onInit();
  }

  void onSave() async {
    isLoading(true);

    if (formKey.currentState!.validate()) {
      var user = UserModel(
        id: userID.value ?? const Uuid().v4(),
        username: userNameCtrl.text,
        password: passWordCtrl.text,
        fullName: fullNameCtrl.text,
        phoneNumber: phoneNumberCtrl.text,
        role: role.value,
        profile: tempImageStr.value,
      );

      if (userID.value != null) {
        var resp = await ResponsitoryServices.updateUser(user);
        if (resp.statusCode == 201 || resp.statusCode == 200) {
          AppAlert.successAlert(title: "update_successfully".tr);
          Get.offAllNamed(UserListView.routeName);
        } else {
          AppAlert.errorAlert(title: "save_error".tr);
        }
      } else {
        var resp = await ResponsitoryServices.insertUser(user);
        if (resp.statusCode == 201 || resp.statusCode == 200) {
          AppAlert.successAlert(title: "save_successfully".tr);
          Get.offAllNamed(UserListView.routeName);
        } else {
          AppAlert.errorAlert(title: "save_error".tr);
        }
      }
    }

    onInit();
    isLoading(false);
  }

  void onUploadImage() async {
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
        imagePath(file.path);
      }

      var uploadImageResp = kIsWeb
          ? await ResponsitoryServices.upload(
              rawFile: unit8List.value,
              name: tempImageStr.value,
            )
          : await ResponsitoryServices.upload(path: imagePath.value);

      if (uploadImageResp.statusCode == 200) {
        tempImageStr(uploadImageResp.body);
      } else {
        tempImageStr("");
      }
      update();
    }
  }

  void onChangeRole(String? value) {
    role(value);
  }
}
