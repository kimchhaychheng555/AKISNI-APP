import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/manage_views/new_manage_view.dart';
import 'package:get/get.dart';

class ManageController extends GetxController {
  var isLoading = false.obs;
  RxList<LocationListModel> listLocations = (<LocationListModel>[]).obs;

  @override
  void onInit() async {
    _onGetData();
    super.onInit();
  }

  void onAddNewLocationList() => Get.toNamed(NewManageView.routeName);
  Future<void> _onGetData() async {
    isLoading(true);
    var locations = await ResponsitoryServices.getLocation();
    listLocations.assignAll(locations);
    isLoading(false);
  }

  void onDeletePressed(String? value) async {
    var resp = await ResponsitoryServices.deleteLocation(value);
    if (resp.statusCode == 200) {}
    _onGetData();
  }
}
