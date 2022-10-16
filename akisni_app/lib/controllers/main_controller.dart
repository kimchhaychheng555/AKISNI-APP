import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/respository_services.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var isLoading = false.obs;
  RxList<UserModel> userList = (<UserModel>[]).obs;

  @override
  void onInit() async {
    isLoading(true);
    await AppService.onStartUp();
    userList(await RespositoryServices.getUser());
    isLoading(false);

    super.onInit();
  }
}
