import 'package:akisni_app/components/date_time_picker_component.dart';
import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/manage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/card_component.dart';
import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class ManageView extends GetResponsiveView<MainController> {
  ManageView({super.key});

  static String routeName = "/manage";

  @override
  Widget builder() {
    var controller = Get.find<ManageController>();
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
        drawer: const DrawerComponent(),
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
                          controller: controller.nameCtrl,
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
                          controller: controller.latitudeCtrl,
                          placeholder: 'latitude'.tr,
                        ),
                        InputTextComponent(
                          controller: controller.longtitudeCtrl,
                          textInputType: TextInputType.number,
                          placeholder: 'longtitude'.tr,
                        ),
                        InputTextComponent(
                          isTextArea: true,
                          textInputType: TextInputType.number,
                          placeholder: 'location'.tr,
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
