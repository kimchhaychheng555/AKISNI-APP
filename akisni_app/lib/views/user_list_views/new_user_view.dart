import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/cache_network_image_component.dart';
import 'package:akisni_app/components/select_opction_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/new_user_controller.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/card_component.dart';
import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class NewUserView extends GetResponsiveView<MainController> {
  NewUserView({super.key});

  static String routeName = "/newuser";

  @override
  Widget builder() {
    var controller = Get.find<NewUserController>();
    return Form(
      key: controller.formKey,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: BluePrimary,
          actions: [
            IconButton(
              onPressed: () {
                controller.onSave();
              },
              icon: const Icon(Icons.check),
            )
          ],
          title: TextHeaderComponent(
            text: "user_list".tr.toUpperCase(),
          ),
        ),
        body: Obx(
          () => LoadingOverlayComponent(
            isLoading: controller.isLoading.value,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(DEFAULT_PADDING),
              child: Column(
                children: [
                  CardComponent(
                    title: 'general_information'.tr,
                    isHasTitle: true,
                    child: Column(
                      children: [
                        InputTextComponent(
                          controller: controller.userNameCtrl,
                          placeholder: 'username'.tr,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'required'.tr;
                            }
                            return null;
                          },
                        ),
                        InputTextComponent(
                          controller: controller.passWordCtrl,
                          placeholder: 'password'.tr,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'required'.tr;
                            }
                            return null;
                          },
                        ),
                        InputTextComponent(
                          controller: controller.fullNameCtrl,
                          placeholder: 'fullname'.tr,
                          validator: (value) {
                            if (AppService.loginUser.role?.toLowerCase() ==
                                "admin") {
                              return null;
                            } else if (value == null || value.isEmpty) {
                              return 'required'.tr;
                            }
                            return null;
                          },
                        ),
                        InputTextComponent(
                          controller: controller.phoneNumberCtrl,
                          placeholder: 'phone_number'.tr,
                          validator: (value) {
                            if (AppService.loginUser.role?.toLowerCase() ==
                                "admin") {
                              return null;
                            } else if (value == null || value.isEmpty) {
                              return 'required'.tr;
                            }
                            return null;
                          },
                        ),
                        InputTextComponent(
                          controller: controller.positionCtrl,
                          placeholder: 'position'.tr,
                          validator: (value) {
                            if (AppService.loginUser.role?.toLowerCase() ==
                                "admin") {
                              return null;
                            } else if (value == null || value.isEmpty) {
                              return 'required'.tr;
                            }
                            return null;
                          },
                        ),
                        InputTextComponent(
                          controller: controller.idCardCtrl,
                          placeholder: 'id_card'.tr,
                          validator: (value) {
                            if (AppService.loginUser.role?.toLowerCase() ==
                                "admin") {
                              return null;
                            } else if (value == null || value.isEmpty) {
                              return 'required'.tr;
                            }
                            return null;
                          },
                        ),
                        if (AppService.loginUser.role?.toLowerCase() == "admin")
                          SelectOpctionComponent<String>(
                            placeholder: 'select_user_type'.tr,
                            value: controller.role.value,
                            items: controller.roleList.map((e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e.toString()),
                              );
                            }).toList(),
                            onChanged: (value) =>
                                controller.onChangeRole(value),
                          ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade100,
                          ),
                          child: InkWell(
                            onTap: () => controller.onUploadImage(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CacheNetworkImageComponent(
                                imageUrl: controller.tempImageStr.value,
                                errorWidget: Container(
                                  margin: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black38,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.cloud_upload,
                                        color: Colors.black38,
                                        size: 50,
                                      ),
                                      TextComponent(
                                        text: "upload".tr,
                                        color: Colors.black38,
                                        fontSize: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if ((controller.isActivate.value ?? "") != "")
                    CardComponent(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: ActiveColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: TextComponent(
                                    text: controller.isActivate.value ?? "")),
                          ),
                          const SizedBox(height: 10),
                          ButtonComponent(
                            titleButton: "activate_new_device".tr,
                            onClick: () => controller.onActivateNewDevice(),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
