import 'package:akisni/models/location_list_models/location_list_model.dart';
import 'package:akisni/services/responsitory_services.dart';
import 'package:akisni/views/manage_views/new_manage_view.dart';
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

  void onEditPressed(LocationListModel location) =>
      Get.toNamed(NewManageView.routeName, arguments: location);

  void onDeletePressed(String? value) async {
    var resp = await ResponsitoryServices.deleteLocation(value);
    if (resp.statusCode == 200) {}
    _onGetData();
  }
}
