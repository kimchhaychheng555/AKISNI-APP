import 'package:akisni/constants/constant.dart';
import 'package:akisni/helper/app_bindings.dart';
import 'package:akisni/helper/app_routes.dart';
import 'package:akisni/services/app_services.dart';
import 'package:akisni/translation/translate_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init("setting");
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      onInit: () => AppService.onTrackUser(),
      debugShowCheckedModeBanner: false,
      translations: TranslateText(),
      locale: AppService.getLanguage,
      title: APP_TITLE.tr,
      theme: ThemeData(
        fontFamily: AppService.getFont,
        backgroundColor: BluePrimary,
      ),
      getPages: AppRoute.getPages,
      initialRoute: AppRoute.initialRoute,
      initialBinding: AppBindings(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
