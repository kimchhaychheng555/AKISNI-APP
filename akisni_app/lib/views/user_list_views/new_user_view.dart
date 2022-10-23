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
                        placeholder: 'user_name'.tr,
                      ),
                      InputTextComponent(
                        placeholder: 'email'.tr,
                      ),
                      InputTextComponent(
                        placeholder: 'phone'.tr,
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
