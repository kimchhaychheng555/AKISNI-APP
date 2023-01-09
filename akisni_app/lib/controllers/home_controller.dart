import 'package:akisni_app/constants/app_data.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/views/user_list_views/new_user_view.dart';
import 'package:akisni_app/views/view_image.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class HomeController extends GetxController {
  RxList<LocationListModel> listLocationTemp = (<LocationListModel>[]).obs;

  var isLoading = false.obs;
  GoogleMapController? mapController;
  var currentPosition = Rxn<Position>();
  RxList<Marker> listLocation = (<Marker>[]).obs;
  final GlobalKey currentMarkerKey = GlobalKey();

  var currentCamera = const CameraPosition(
    bearing: 0.0,
    target: LatLng(11.556124986846767, 104.92695081979036),
    tilt: 0.0,
    zoom: 16.373828887939453,
  ).obs;

  var currentMarkerActive = Rxn<LocationListModel>();

  @override
  void onInit() async {
    isLoading(true);
    await _determinePosition();
    isLoading(false);
    listLocation(AppData.listLocationMarker);
    super.onInit();

    if ((AppService.loginUser.fullName ?? "") == "" ||
        (AppService.loginUser.phoneNumber ?? "") == "") {
      Get.toNamed(NewUserView.routeName, arguments: AppService.loginUser);
    }
  }

  Future<void> _determinePosition() async {
    currentPosition(await Geolocator.getCurrentPosition());
    currentCamera(
      CameraPosition(
        bearing: 0.0,
        target: LatLng(
          currentPosition.value!.latitude,
          currentPosition.value!.longitude,
        ),
        tilt: 0.0,
        zoom: 15.24676513671875,
      ),
    );
  }

  void onMapPressed() {
    currentMarkerActive(LocationListModel(id: Uuid.NAMESPACE_NIL));
    update();
  }

  void onSearch(String? value) {}

  void onViewImagePressed(String? image) {
    if ((image ?? "") != "") {
      Get.dialog(
        ViewImage(
          imageUrl: image!,
        ),
        transitionDuration: const Duration(milliseconds: 100),
      );
    }
  }
}
