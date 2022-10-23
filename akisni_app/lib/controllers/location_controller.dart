import 'package:akisni_app/views/location_views/new_location_view.dart';
import 'package:akisni_app/views/user_list_views/new_user_view.dart';
import 'package:get/get.dart';

import '../models/location_list_models/location_list_model.dart';

class LocationController extends GetxController {
  var isLoading = false.obs;

  void onAddNewLocatorPressed() => Get.offAllNamed(NewLocationView.routeName);

  final List<LocationListModel> locations = [
    LocationListModel(
        title: 'DK20-098',
        location: 'Borey Lim Chhay Hak',
        power: '400kVA (Thibidi)',
        installDate: ' 01 October 2020',
        company: 'CHCT Company'),
    LocationListModel(
        title: 'DK20-098',
        location: 'Borey Lim Chhay Hak',
        power: '400kVA (Thibidi)',
        installDate: ' 01 October 2020',
        company: 'CHCT Company'),
    LocationListModel(
        title: 'DK20-098',
        location: 'Borey Lim Chhay Hak',
        power: '400kVA (Thibidi)',
        installDate: ' 01 October 2020',
        company: 'CHCT Company'),
    LocationListModel(
        title: 'DK20-098',
        location: 'Borey Lim Chhay Hak',
        power: '400kVA (Thibidi)',
        installDate: ' 01 October 2020',
        company: 'CHCT Company'),
    LocationListModel(
        title: 'DK20-098',
        location: 'Borey Lim Chhay Hak',
        power: '400kVA (Thibidi)',
        installDate: ' 01 October 2020',
        company: 'CHCT Company'),
    LocationListModel(
        title: 'DK20-098',
        location: 'Borey Lim Chhay Hak',
        power: '400kVA (Thibidi)',
        installDate: ' 01 October 2020',
        company: 'CHCT Company'),
  ];
}
