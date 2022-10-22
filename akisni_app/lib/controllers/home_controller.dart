import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void onMarkerPressed(Marker marker) {}

  Future<void> _onLoadMarker() async {
    BitmapDescriptor icon = await MarkerIcon.pictureAsset(
        assetPath: "assets/images/tower.png", height: 300, width: 300);

    ResponsitoryServices.getLocation().map((m) => _addLocationList(Marker(
        markerId: MarkerId(m.id ?? "0"),
        infoWindow: InfoWindow(title: m.title),
        position: LatLng(m.latitude ?? 0, m.longitude ?? 0),
        icon: icon,
        onTap: () => currentMarkerActive(m))));
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
    update();
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
  }

  void onclick(String latitude, String longitude) async {
    String dir = "google.navigation:q=$latitude,$longitude";
    final Uri uri = Uri.parse(dir);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
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
}
