import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var currentPosition = Rxn<Position>();
  var currentCamera = Rxn<CameraPosition>();
  RxList<Marker> listLocation = (<Marker>[]).obs;
  final GlobalKey currentMarkerKey = GlobalKey();

  var currentMarkerActive = Rxn<LocationListModel>();

  @override
  void onInit() async {
    isLoading(true);
    await _determinePosition();
    isLoading(false);

    await _onCurrentMarker();
    await _onLoadMarker();
    super.onInit();
  }

  void onMapPressed() {
    currentMarkerActive(LocationListModel(id: Uuid.NAMESPACE_NIL));
    update();
  }

  Future<void> _onLoadMarker() async {
    var locations = await ResponsitoryServices.getLocation();

    for (var marker in locations) {
      _addLocationList(
        Marker(
          infoWindow: InfoWindow(title: marker.title),
          onTap: () => currentMarkerActive(marker),
          markerId: MarkerId("${marker.id ?? 0}"),
          position: LatLng(marker.latitude ?? 0, marker.longitude ?? 0),
          icon: await MarkerIcon.pictureAsset(
              assetPath: "assets/images/tower.png", height: 150, width: 150),
        ),
      );
    }
  }

  Future<void> _onCurrentMarker() async {
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

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

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
