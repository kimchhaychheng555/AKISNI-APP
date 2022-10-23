import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/select_opction_component.dart';
import 'package:akisni_app/controllers/new_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../components/card_component.dart';
import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class NewUserView extends StatelessWidget {
  const NewUserView({super.key});
  static String routeName = "/newuser";
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<NewUserController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: BluePrimary,
        actions: [Icon(Icons.check)],
        title: TextHeaderComponent(
          text: "new_user".tr.toUpperCase(),
        ),
      ),
      drawer: DrawerComponent(),
      body: LoadingOverlayComponent(
        isLoading: controller.isLoading.value,
        child: Padding(
          padding: EdgeInsets.all(DEFAULT_PADDING),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardComponent(
                  title: 'user_information'.tr,
                  isHasTitle: true,
                  child: Column(
                    children: [
                      // SelectOpctionComponenet(
                      //   dataValue: controller.list,
                      //   dropdownValue: 'select_user_type'.tr,
                      // ),
                      InputTextComponent(
                        controller: controller.userNameCtrl,
                        placeholder: 'user_name'.tr,
                      ),
                      InputTextComponent(
                        controller: controller.phoneNumberCtrl,
                        placeholder: 'phone_number'.tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
