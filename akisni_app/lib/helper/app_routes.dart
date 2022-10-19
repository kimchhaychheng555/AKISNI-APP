import 'package:akisni_app/helper/app_bindings.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:akisni_app/views/login_views/login_view.dart';
import 'package:akisni_app/views/main_views.dart';
import 'package:akisni_app/views/no_network_view.dart';
import 'package:get/get.dart';

class AppRoute {
  static String initialRoute = MainViews.routeName;

  static List<GetPage<dynamic>> get getPages => [
        GetPage(
          page: () => const NoNetWorkView(),
          name: NoNetWorkView.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => const MainViews(),
          name: MainViews.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => const LoginView(),
          name: LoginView.routeName,
          binding: AppBindings(),
        ),
        GetPage(
          page: () => const HomeView(),
          name: HomeView.routeName,
          binding: AppBindings(),
        ),
      ];
}
