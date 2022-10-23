import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewUserController extends GetxController {
  var isLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  final List<String> list = <String>['Admin', 'GM', 'HR', 'Staff'];

  var userNameCtrl = TextEditingController();
  var phoneNumberCtrl = TextEditingController();
}
