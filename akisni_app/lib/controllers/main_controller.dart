import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/services/app_provider.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:akisni_app/views/location_views/location_view.dart';
import 'package:akisni_app/views/login_views/login_view.dart';
import 'package:akisni_app/views/manage_views/manage_view.dart';
import 'package:akisni_app/views/no_network_view.dart';
import 'package:akisni_app/views/track_locations_views/track_location_view.dart';
import 'package:akisni_app/views/user_list_views/new_user_view.dart';
import 'package:akisni_app/views/user_list_views/user_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

class MainController extends FullLifeCycleController {
  AppProvider appProvider = AppProvider();
  var isLoading = false.obs;
  var isDbLoad = false.obs;
  var isLogin = false.obs;
  var isLoadingGetCurrentLocation = false.obs;

  @override
  void onInit() async {
    isLoading(true);
    await _checkLocationPermission();
    await AppService.onStartUp();
    isDbLoad(true);
    isLoading(false);
    ResponsitoryServices.insertActiveUser(AppService.loginUser);
    _assignLocation();
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }

  var currentLocation = Rxn<Position>();
  void getCurrentPostion() async {
    isLoadingGetCurrentLocation(true);
    currentLocation(await Geolocator.getLastKnownPosition());
    isLoadingGetCurrentLocation(false);
  }

  Future<void> _checkLocationPermission() async {
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
  }

  Widget get afterLoading {
    return AppService.isHasNetwork
        ? isLogin.value
            ? HomeView()
            : LoginView()
        : NoNetWorkView();
  }

  void onDirectionPressed(String latitude, String longitude) async {
    String dir = "google.navigation:q=$latitude,$longitude&mode=c";
    final Uri uri = Uri.parse(dir);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  void onHomePressed() => Get.offNamed(HomeView.routeName);

  void onLocatorListPressed() => Get.offNamed(LocationView.routeName);

  void onManagePressed() => Get.offNamed(ManageView.routeName);

  void onUserPressed() => Get.offNamed(UserListView.routeName);

  void onTrackLocationPressed() => Get.offNamed(TrackLocationView.routeName);

  void onSettingPressed() {
    Get.back();
    Get.toNamed(NewUserView.routeName, arguments: AppService.loginUser);
  }

  void onLogoutPreseed() async {
    Get.offAllNamed(LoginView.routeName);
    await AppStorage.storage.remove("user");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if ((AppService.loginUser.id ?? Uuid.NAMESPACE_NIL) != Uuid.NAMESPACE_NIL) {
      if (state == AppLifecycleState.paused) {
        ResponsitoryServices.deleteActiveUser(AppService.loginUser);
      } else if (state == AppLifecycleState.detached) {
        ResponsitoryServices.deleteActiveUser(AppService.loginUser);
      } else if (state == AppLifecycleState.resumed) {
        ResponsitoryServices.insertActiveUser(AppService.loginUser);
      }
    }
  }

  void _assignLocation() async {
    while (true) {
      ResponsitoryServices.updateActiveUser(AppService.loginUser);
      await Future.delayed(Duration(seconds: DEFAULT_TRACK_SERVICE_DURATION));
    }
  }

  @override
  void onClose() {
    super.onClose();
    WidgetsBinding.instance.removeObserver(this);
  }
}
