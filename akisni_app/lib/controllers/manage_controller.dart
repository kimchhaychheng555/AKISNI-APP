import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
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

  void onSelectChangeDate(String? value) {
    installDate(value);
  }

  void onSave() async {
    isLoading(true);
    var locate = LocationListModel(
      id: const Uuid().v4(),
      company: companyNameCtrl.text,
      installDate: installDate.value,
      location: locationCtrl.text,
      latitude: double.tryParse(latitudeCtrl.text),
      longitude: double.tryParse(longtitudeCtrl.text),
      name: nameCtrl.text,
      power: powerCtrl.text,
    );
    if (formKey.currentState!.validate()) {
      await ResponsitoryServices.insertLocation(locate);
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
    }

    isLoading(false);
  }
}
