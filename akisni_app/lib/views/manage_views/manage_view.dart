import 'package:akisni_app/components/date_time_picker_component.dart';
import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/controllers/manage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/card_component.dart';
import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class ManageView extends StatelessWidget {
  const ManageView({super.key});
  static String routeName = "/manage";
  @override
  Widget build(BuildContext context) {
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
              icon: Icon(Icons.check),
            )
          ],
          title: TextHeaderComponent(
            text: "new_loaction".tr.toUpperCase(),
          ),
        ),
        drawer: DrawerComponent(),
        body: LoadingOverlayComponent(
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
                        placeholder: 'dk'.toUpperCase(),
                      ),
                      DateTimePickerComponent(
                        onSelectonChange: (date) =>
                            controller.onSelectChangeDate(date),
                      ),
                      InputTextComponent(
                        controller: controller.customerNameCtrl,
                        placeholder: 'customer_name',
                      ),
                      InputTextComponent(
                        controller: controller.companyNameCtrl,
                        placeholder: 'company_name'.tr,
                      ),
                      InputTextComponent(
                        controller: controller.powerCtrl,
                        placeholder: 'power'.tr,
                      ),
                      InputTextComponent(
                        controller: controller.typeCtrl,
                        placeholder: 'type'.tr,
                      ),
                      InputTextComponent(
                        controller: controller.latitudeCtrl,
                        placeholder: 'latitude'.tr,
                      ),
                      InputTextComponent(
                        controller: controller.longtitudeCtrl,
                        placeholder: 'longtitude'.tr,
                      ),
                      InputTextComponent(
                        isTextArea: true,
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
    );
  }
}
