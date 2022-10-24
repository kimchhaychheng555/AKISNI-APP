import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

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

    var res = await ResponsitoryServices.insertLocation(locate);

    Get.snackbar("Heloo", "");

    isLoading(false);
  }
}
