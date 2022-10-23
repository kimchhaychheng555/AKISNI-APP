import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class ManageController extends GetxController {
  var isLoading = false.obs;

  // Var Location Temp
  var installDate = ''.obs;
  var nameCtrl = TextEditingController();
  var power = ''.obs;
  var type = ''.obs;
  var location = ''.obs;
  var customerName = ''.obs;
  var companyName = ''.obs;
  var latitude = ''.obs;
  var longtitude = ''.obs;
  // End

  void onSelectChangeDate(String? value) {
    installDate(value);
  }

  void onSave() async {
    var locate = LocationListModel(
      id: Uuid().v4(),
    );

    var res = await ResponsitoryServices.insertLocation(locate);
  }
}
