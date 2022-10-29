import 'package:akisni_app/helper/app_bindings.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:akisni_app/views/location_views/location_view.dart';
import 'package:akisni_app/views/login_views/login_view.dart';
import 'package:akisni_app/views/main_views.dart';
import 'package:akisni_app/views/manage_views/manage_view.dart';
import 'package:akisni_app/views/no_network_view.dart';
import 'package:akisni_app/views/track_locations_views/track_location.dart';
import 'package:akisni_app/views/user_list_views/new_user_view.dart';
import 'package:akisni_app/views/user_list_views/user_list_view.dart';
import 'package:get/get.dart';

class AppRoute {
  static String initialRoute = MainViews.routeName;

  static List<GetPage<dynamic>> get getPages => [
        GetPage(
          page: () => NoNetWorkView(),
          name: NoNetWorkView.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => MainViews(),
          name: MainViews.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => UserListView(),
          name: UserListView.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => LoginView(),
          name: LoginView.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => HomeView(),
          name: HomeView.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          name: LocationView.routeName,
          page: () => LocationView(),
          binding: AppBindings(),
        ),
        GetPage(
          name: NewUserView.routeName,
          page: () => NewUserView(),
          binding: AppBindings(),
        ),
        GetPage(
          name: ManageView.routeName,
          page: () => ManageView(),
          binding: AppBindings(),
        ),
        GetPage(
          name: TrackLocationView.routeName,
          page: () => TrackLocationView(),
          binding: AppBindings(),
        ),
      ];
}
