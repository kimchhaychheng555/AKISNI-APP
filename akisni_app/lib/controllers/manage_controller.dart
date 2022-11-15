import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/tage_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/manage_views/new_manage_view.dart';
import 'package:darq/darq.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageController extends GetxController {
  var isLoading = false.obs;
  var filterType = "".obs;
  RxList<LocationListModel> listLocations = (<LocationListModel>[]).obs;
  RxList<String?> listType = (<String?>[]).obs;

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
    _assignGroup();
    isLoading(false);
  }

  void onEditPressed(LocationListModel location) =>
      Get.toNamed(NewManageView.routeName, arguments: location);

  void onDeletePressed(String? value) async {
    var resp = await ResponsitoryServices.deleteLocation(value);
    if (resp.statusCode == 200) {}
    _onGetData();
  }

  void onFilterActionPressed() {
    Get.bottomSheet(
      Obx(
        () => Container(
          padding: EdgeInsets.all(DEFAULT_PADDING),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComponent(
                text: 'filter_result'.tr,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              Wrap(
                spacing: 2,
                runSpacing: 0,
                children: [
                  TageComponent(
                    selected: (filterType.value == ""),
                    onClick: () => onTypePressed(""),
                    label: "all".tr,
                  ),
                  ...listType.map(
                    (element) => TageComponent(
                      selected: (filterType.value == element),
                      onClick: () => onTypePressed(element),
                      label: element ?? "",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ButtonComponent(
                onClick: () => filterPressed(),
                titleButton: 'apply_filter'.tr,
              )
            ],
          ),
        ),
      ),
    );
  }

  filterPressed() async {
    Get.back();
    if (filterType.value == "") {
      _onGetData();
    } else {
      isLoading(true);
      var locations = await ResponsitoryServices.getLocation();
      listLocations.assignAll(
          locations.where((x) => x.type == filterType.value).toList());
      isLoading(false);
    }
  }

  void onTypePressed(String? type) {
    filterType(type);
  }

  void _assignGroup() async {
    var temp = listLocations.groupBy((e) => e.type).toList();
    var tempGroup = temp.map((e) => e.key).toList();
    tempGroup = tempGroup
        .where((element) => element?.trim() != "" && element?.trim() != null)
        .toList();
    listType(tempGroup);
  }
}
