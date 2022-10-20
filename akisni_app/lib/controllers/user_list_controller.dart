import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:get/get.dart';

class UserListController extends GetxController {
  var isLoading = false.obs;

  final List<UserModel> users = [
    UserModel(
        fullName: 'Chanthou',
        username: 'chanthou',
        phoneNumber: '090 20 38 49',
        active: true,
        profile: 'assets/images/profile_3.jpg'),
    UserModel(
        fullName: 'Chay',
        username: 'chay',
        phoneNumber: '090 20 38 49',
        active: false,
        profile: 'assets/images/profile_2.jpg'),
    UserModel(
        fullName: 'Rathana',
        username: 'rathana',
        phoneNumber: '090 20 38 49',
        active: true,
        profile: 'assets/images/profile_1.jpg'),
  ];
}
