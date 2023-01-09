import 'package:akisni_app/constants/constant.dart';
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

  RxList<UserActiveModel> userActiveList = (<UserActiveModel>[]).obs;

  @override
  void onInit() async {
    isLoading(true);
    await _determinePosition();
    isLoading(false);
    _onLoadMapRefresh();
    super.onInit();
  }

  void _onLoadMapRefresh() async {
    while (true) {
      userActiveList(await ResponsitoryServices.getTrackUser());
      await _onUserMarker();
      await Future.delayed(Duration(seconds: DEFAULT_TRACK_SERVICE_DURATION));
    }
  }

  void onMapPressed() {
    currentMarkerActive(LocationListModel(id: Uuid.NAMESPACE_NIL));
    update();
  }

  Future<void> _onUserMarker() async {
    for (var marker in userActiveList) {
      final date2 = DateTime.now();
      int difference =
          date2.difference(marker.updated_at ?? DateTime.now()).inMinutes;

      if (marker.user_id != AppService.loginUser.id && (difference < 5)) {
        if (marker.active == "active") {
          _addUserList(
            Marker(
              infoWindow: InfoWindow(title: marker.fullName),
              onTap: () => currentUserActive(marker),
              markerId: MarkerId("${marker.id ?? 0}"),
              position:
                  LatLng(marker.lastLatitude ?? 0, marker.lastLongitude ?? 0),
              icon: await MarkerIcon.pictureAsset(
                  assetPath: "assets/images/user.png", height: 100, width: 100),
            ),
          );
        } else {
          listMark
              .removeWhere((x) => x.markerId == MarkerId(marker.id.toString()));
        }
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
}
