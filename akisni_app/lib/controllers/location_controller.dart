import 'package:akisni_app/services/responsitory_services.dart';
import 'package:get/get.dart';

import '../models/location_list_models/location_list_model.dart';

class LocationController extends GetxController {
  var isLoading = false.obs;
  RxList<LocationListModel> listLocations = (<LocationListModel>[]).obs;

  @override
  void onInit() async {
    _onGetData();
    super.onInit();
  }

  Future<void> _onGetData() async {
    isLoading(true);
    var locations = await ResponsitoryServices.getLocation();
    listLocations.assignAll(locations);
    isLoading(false);
  }
}
