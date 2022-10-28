import 'dart:io';

import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../views/location_views/location_view.dart';

class ManageController extends GetxController {
  var isLoading = false.obs;

  final formKey = GlobalKey<FormState>();
  // Var Location Temp
  var installDate = ''.obs;
  var nameCtrl = TextEditingController();
  var powerCtrl = TextEditingController();
  var typeCtrl = TextEditingController();
  var locationCtrl = TextEditingController();
  var customerNameCtrl = TextEditingController();
  var companyNameCtrl = TextEditingController();
  var latitudeCtrl = TextEditingController();
  var longtitudeCtrl = TextEditingController();
  // End
  var tempImageStr = "".obs;

  void onSelectChangeDate(String? value) {
    installDate(value);
  }

  final List<String> listTypes = ['LV', 'CG', 'LD'];

  void onSave() async {
    isLoading(true);

    var uploadImageResp =
        await ResponsitoryServices.upload(path: tempImageStr.value);

    if (uploadImageResp.statusCode == 200) {
      var locate = LocationListModel(
        id: const Uuid().v4(),
        company: companyNameCtrl.text,
        installDate: installDate.value,
        location: locationCtrl.text,
        latitude: double.tryParse(latitudeCtrl.text),
        longitude: double.tryParse(longtitudeCtrl.text),
        image: uploadImageResp.body,
        name: nameCtrl.text,
        power: powerCtrl.text,
      );
      if (formKey.currentState!.validate()) {
        var resp = await ResponsitoryServices.insertLocation(locate);

        if (resp.statusCode == 201 || resp.statusCode == 200) {
          Get.snackbar(
            "Save Success",
            "",
            icon: const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 24,
            ),
            borderRadius: 4,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.green.shade200,
          );
          Get.offNamed(LocationView.routeName);
        } else {
          Get.snackbar(
            "Can't Save",
            "",
            icon: const Icon(
              Icons.check_circle,
              color: Colors.red,
              size: 24,
            ),
            borderRadius: 4,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.green.shade200,
          );
        }
      }
    }

    isLoading(false);
  }

  void onUploadImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;

      tempImageStr(file.path);
    } else {}
  }

  File get getImageFile {
    return File(tempImageStr.value);
  }
}
