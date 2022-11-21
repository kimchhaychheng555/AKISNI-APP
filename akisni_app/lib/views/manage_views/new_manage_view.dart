import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/cache_network_image_component.dart';
import 'package:akisni_app/components/date_time_picker_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/new_manage_controller.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/card_component.dart';
import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class NewManageView extends GetResponsiveView<MainController> {
  NewManageView({super.key});

  static String routeName = "/new-manage";

  @override
  Widget builder() {
    var controller = Get.find<NewManageController>();
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
            text: "new_location".tr.toUpperCase(),
          ),
        ),
        body: Obx(
          () => LoadingOverlayComponent(
            isLoading: controller.isLoading.value,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(DEFAULT_PADDING),
              child: Column(
                children: [
                  if (AppService.loginUser.role?.toLowerCase() == "admin")
                    CardComponent(
                      title: 'admin_script'.tr,
                      isHasTitle: true,
                      child: Column(
                        children: [
                          InputTextComponent(
                            controller: controller.adminScriptCtrl,
                            placeholder: 'admin_script'.tr,
                          ),
                          ButtonComponent(
                            titleButton: "generate".tr,
                            onClick: () => controller.onGenerateData(),
                          ),
                        ],
                      ),
                    ),
                  CardComponent(
                    title: 'general_information'.tr,
                    isHasTitle: true,
                    child: Column(
                      children: [
                        InputTextComponent(
                          controller: controller.dkCtrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please_enter_DK'.tr;
                            }
                            return null;
                          },
                          placeholder: 'dk'.toUpperCase(),
                        ),
                        InputTextComponent(
                          controller: controller.powerCtrl,
                          placeholder: 'power'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.typeCtrl,
                          placeholder: 'type'.tr,
                        ),
                        DateTimePickerComponent(
                          label: "install_date".tr,
                          initialValue: controller.installDate.value,
                          onSelectonChange: (date) =>
                              controller.onSelectChangeDate(date),
                        ),
                        InputTextComponent(
                          controller: controller.customerNameCtrl,
                          placeholder: 'customer_name'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.companyNameCtrl,
                          placeholder: 'company_name'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.depositCtrl,
                          placeholder: 'deposit'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.latitudeCtrl,
                          textInputType: TextInputType.number,
                          placeholder: 'latitude'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.longtitudeCtrl,
                          textInputType: TextInputType.number,
                          placeholder: 'longtitude'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.locationCtrl,
                          isTextArea: true,
                          placeholder: 'location'.tr,
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
                        if (AppService.loginUser.role?.toLowerCase() == "admin")
                          ButtonComponent(
                            titleButton: "search_map".tr,
                            onClick: () => controller.onSearchMap(),
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
