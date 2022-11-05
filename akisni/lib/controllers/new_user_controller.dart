import 'dart:io';

import 'package:akisni/models/user_models/user_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../services/responsitory_services.dart';

class NewUserController extends GetxController {
  var isLoading = false.obs;
  var isNetworkImage = false.obs;
  var userID = Rxn<String>();
  final formKey = GlobalKey<FormState>();
  var tempImageStr = "".obs;
  var unit8List = Rxn<Uint8List>();
  final List<String> list = <String>['Admin', 'GM', 'HR', 'Staff'];
  var userNameCtrl = TextEditingController();
  var fullNameCtrl = TextEditingController();
  var passWordCtrl = TextEditingController();
  var roleCtrl = ''.obs;
  var phoneNumberCtrl = TextEditingController();

  void onSelectRole(String? value) {
    roleCtrl(value);
  }

  @override
  void onInit() {
    var user = Get.arguments;

    if (user != null) {
      isNetworkImage(true);
      UserModel temp = user;
      userID(temp.id);
      roleCtrl(temp.role);
      userNameCtrl.text = temp.username ?? "";
      passWordCtrl.text = temp.password ?? "";
      phoneNumberCtrl.text = temp.phoneNumber ?? "";
      fullNameCtrl.text = temp.fullName ?? "";
      tempImageStr(temp.profile);
    }

    super.onInit();
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
    }

    var uploadImageResp = kIsWeb
        ? await ResponsitoryServices.upload(
            rawFile: unit8List.value,
            name: tempImageStr.value,
          )
        : await ResponsitoryServices.upload(path: tempImageStr.value);

    if (uploadImageResp.statusCode == 200) {
      isNetworkImage(false);
      tempImageStr(uploadImageResp.body);
    } else {
      tempImageStr("");
    }
  }

  File get getImageFile {
    if (kIsWeb) {
      return File.fromRawPath(unit8List.value!);
    } else {
      return File(tempImageStr.value);
    }
  }
}
