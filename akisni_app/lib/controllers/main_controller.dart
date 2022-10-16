import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/respository_services.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var isLoading = false.obs;

  @override
  void onInit() async {
    isLoading(true);
    await AppService.onStartUp();
    // await RespositoryServices.getUser();
    await RespositoryServices.checkLogin(
      username: "chhaylow",
      password: "123456789",
    );
    isLoading(false);

    super.onInit();
  }
}
