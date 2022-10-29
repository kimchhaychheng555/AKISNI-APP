import 'package:akisni_app/components/select_opction_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/new_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/card_component.dart';
import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class NewUserView extends GetResponsiveView<MainController> {
  NewUserView({super.key});

  static String routeName = "/newuser";

  @override
  Widget builder() {
    var controller = Get.find<NewUserController>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: BluePrimary,
        actions: const [Icon(Icons.check)],
        title: TextHeaderComponent(
          text: "new_user".tr.toUpperCase(),
        ),
      ),
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

                      InputTextComponent(
                        controller: controller.userNameCtrl,
                        placeholder: 'user_name'.tr,
                      ),
                      SelectOpctionComponent(
                          placeholder: 'select_user_type'.tr,
                          items: controller.list.map((e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {}),
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
