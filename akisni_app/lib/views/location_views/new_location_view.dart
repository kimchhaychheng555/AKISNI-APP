import 'package:akisni_app/components/card_component.dart';
import 'package:akisni_app/components/input_text_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class NewLocationView extends StatelessWidget {
  const NewLocationView({super.key});
  static String routeName = "/newlocation";
  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: EdgeInsets.all(DEFAULT_PADDING),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardComponent(
                  title: 'general_information'.tr,
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
      ),
    );
  }
}
