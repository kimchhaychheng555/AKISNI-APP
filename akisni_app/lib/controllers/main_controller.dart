import 'package:akisni_app/services/app_services.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var isLoading = false.obs;

  @override
  void onInit() async {
    isLoading(true);
    await AppService.onStartUp();
    isLoading(false);

    super.onInit();
  }
}
