import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
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
    await _onLoadMarker("");
    super.onInit();
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

  void onSearch(String? value) {
    if (value?.toLowerCase() == "lv" || value?.toLowerCase() == "mv") {
      _onLoadMarker(value);
    } else {
      var temps = listLocationTemp
          .where((l) => l.title?.toLowerCase() == value?.toLowerCase())
          .toList();

      if (temps.isNotEmpty) {
        currentMarkerActive(temps.first);
      } else {
        AppAlert.errorAlert(title: "no_this_name".tr);
      }
    }
  }

  Future<void> _onLoadMarker(String? type) async {
    listLocation([]);
    type = (type ?? "") == "" ? "" : type;
    var locations = AppService.listLocations;
    listLocationTemp(locations);

    for (var marker in locations) {
      if ((marker.latitude ?? 0) != 0 && (marker.longitude ?? 0) != 0) {
        if ((type ?? "") != "") {
          if (marker.type?.toLowerCase() == type) {
            _addLocationList(
              Marker(
                infoWindow: InfoWindow(title: marker.title),
                onTap: () => currentMarkerActive(marker),
                markerId: MarkerId("${marker.id ?? 0}"),
                position: LatLng(marker.latitude ?? 0, marker.longitude ?? 0),
                icon: await MarkerIcon.pictureAsset(
                    assetPath: "assets/images/tower.png",
                    height: 80,
                    width: 80),
              ),
            );
          }
        } else {
          _addLocationList(
            Marker(
              infoWindow: InfoWindow(title: marker.title),
              onTap: () => currentMarkerActive(marker),
              markerId: MarkerId("${marker.id ?? 0}"),
              position: LatLng(marker.latitude ?? 0, marker.longitude ?? 0),
              icon: await MarkerIcon.pictureAsset(
                  assetPath: "assets/images/tower.png", height: 80, width: 80),
            ),
          );
        }
      }
    }
  }

  void _addLocationList(Marker marker) async {
    var exist =
        listLocation.where((x) => x.markerId == marker.markerId).toList();
    if (exist.isEmpty) {
      listLocation.add(marker);
    } else {
      listLocation.removeWhere((x) => x.markerId == marker.markerId);
      listLocation.add(marker);
    }
    update();
  }
}
