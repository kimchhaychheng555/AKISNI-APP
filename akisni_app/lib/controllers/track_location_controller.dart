import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/models/user_active_models/user_active_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class TrackLocationController extends GetxController {
  var isLoading = false.obs;
  var currentPosition = Rxn<Position>();
  var currentCamera = Rxn<CameraPosition>();
  RxList<Marker> listMark = (<Marker>[]).obs;
  final GlobalKey currentMarkerKey = GlobalKey();

  var currentMarkerActive = Rxn<LocationListModel>();
  var currentUserActive = Rxn<UserActiveModel>();

  @override
  void onInit() async {
    isLoading(true);
    await _determinePosition();
    isLoading(false);
    await _onLocationMarker();
    _onLoadMapRefresh();
    super.onInit();
  }

  void _onLoadMapRefresh() async {
    while (true) {
      _onLoadMarker();
      _onUserMarker();
      _onRemoveInactiveUser();
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  void onMapPressed() {
    currentMarkerActive(LocationListModel(id: Uuid.NAMESPACE_NIL));
    update();
  }

  void _onLoadMarker() async {
    var locations = await ResponsitoryServices.getLocation();

    for (var marker in locations) {
      _addLocationList(
        Marker(
          infoWindow: InfoWindow(title: marker.title),
          onTap: () => currentMarkerActive(marker),
          markerId: MarkerId("location-${marker.id ?? 0}"),
          position: LatLng(marker.latitude ?? 0, marker.longitude ?? 0),
          icon: await MarkerIcon.pictureAsset(
              assetPath: "assets/images/tower.png", height: 150, width: 150),
        ),
      );
    }
  }

  void _onRemoveInactiveUser() {
    for (var element in listMark) {
      print(element.markerId.toString().contains('user'));
      if (element.markerId.value.contains('user')) {
        listMark.removeWhere((x) => x.markerId == element.markerId);
      }
    }
  }

  Future<void> _onLocationMarker() async {
    _addLocationList(
      Marker(
        markerId: const MarkerId("0"),
        position: LatLng(
            currentPosition.value!.latitude, currentPosition.value!.longitude),
        icon: await MarkerIcon.pictureAsset(
            assetPath: "assets/images/location.png", height: 60, width: 60),
      ),
    );
  }

  void _onUserMarker() async {
    var mainCtrl = Get.find<MainController>();

    for (var marker in mainCtrl.trackUserList) {
      if (marker.user_id != AppService.loginUser.id) {
        _addUserList(
          Marker(
            infoWindow: InfoWindow(title: marker.fullName),
            onTap: () => currentUserActive(marker),
            markerId: MarkerId("user-${marker.id ?? 0}"),
            position:
                LatLng(marker.lastLatitude ?? 0, marker.lastLongitude ?? 0),
            icon: await MarkerIcon.pictureAsset(
                assetPath: "assets/images/user.png", height: 150, width: 150),
          ),
        );
      }
    }
  }

  void _addUserList(Marker marker) async {
    var exist = listMark.where((x) => x.markerId == marker.markerId).toList();
    if (exist.isEmpty) {
      listMark.add(marker);
    } else {
      listMark.removeWhere((x) => x.markerId == marker.markerId);
      listMark.add(marker);
    }
    update();
  }

  void _addLocationList(Marker marker) async {
    var exist = listMark.where((x) => x.markerId == marker.markerId).toList();
    if (exist.isEmpty) {
      listMark.add(marker);
    } else {
      listMark.removeWhere((x) => x.markerId == marker.markerId);
      listMark.add(marker);
    }
    update();
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

  void setCurrentLocation() async {
    currentPosition(await Geolocator.getCurrentPosition());
  }

  void onExitApp() {
    print("=============================");
    print("===== CLOSE APP =====");
    print("=============================");
  }
}
