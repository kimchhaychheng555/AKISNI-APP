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
    var locate = LocationListModel(
      id: Uuid().v4(),
    );

    var res = await ResponsitoryServices.insertLocation(locate);
  }
}
