import 'package:akisni_app/components/date_time_picker_component.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: BluePrimary,
        actions: [Icon(Icons.check)],
        title: TextHeaderComponent(
          text: "new_loaction".tr.toUpperCase(),
        ),
      ),
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
                    DateTimePickerComponent(
                      onSelectonChange: (date) =>
                          controller.onSelectChangeDate(date),
                    ),
                    InputTextComponent(
                      controller: controller.nameCtrl,
                      placeholder: 'customer_name',
                    ),
                    InputTextComponent(
                      placeholder: 'company_name'.tr,
                    ),
                    InputTextComponent(
                      isTextArea: true,
                      placeholder: 'location'.tr,
                    ),
                  ],
                ),
              ),
              CardComponent(
                title: 'marches_information'.tr,
                isHasTitle: true,
                child: Column(
                  children: [
                    InputTextComponent(
                      placeholder: 'company_name'.tr,
                    ),
                    InputTextComponent(
                      placeholder: 'location_name'.tr,
                    ),
                  ],
                ),
              ),
              CardComponent(
                title: 'map_information'.tr,
                isHasTitle: true,
                child: Column(
                  children: [
                    InputTextComponent(
                      placeholder: 'company_name'.tr,
                    ),
                    InputTextComponent(
                      placeholder: 'location_name'.tr,
                    ),
                  ],
                ),
              ),
              CardComponent(
                title: 'image'.tr,
                isHasTitle: true,
                child: Column(
                  children: [
                    InputTextComponent(
                      placeholder: 'company_name'.tr,
                    ),
                    InputTextComponent(
                      placeholder: 'location_name'.tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
