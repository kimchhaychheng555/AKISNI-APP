import 'package:akisni_app/components/select_opction_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/new_user_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
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
                          child: controller.tempImageStr.isNotEmpty
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: controller.isNetworkImage.value
                                      ? CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl:
                                              "$BASE_URL/public/images/${controller.tempImageStr.value}")
                                      : kIsWeb
                                          ? Image.memory(
                                              controller.unit8List.value!,
                                              fit: BoxFit.cover,
                                            )
                                          : Image.file(
                                              controller.getImageFile,
                                              fit: BoxFit.cover,
                                            ),
                                )
                              : Container(
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
                      InputTextComponent(
                        controller: controller.fullNameCtrl,
                        placeholder: 'full_name'.tr,
                      ),
                      InputTextComponent(
                        controller: controller.userNameCtrl,
                        placeholder: 'user_name'.tr,
                      ),
                      InputTextComponent(
                        placeholder: 'password'.tr,
                        controller: controller.passWordCtrl,
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
