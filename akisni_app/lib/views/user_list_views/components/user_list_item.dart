import 'package:akisni_app/components/cache_network_image_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/views/view_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListItem extends StatelessWidget {
  final String? role;
  final String fullName;
  final String phoneNumber;
  final String profile;
  final String userName;
  final Function()? onEditPressed;
  final Function()? onDeletePressed;
  const UserListItem({
    super.key,
    this.role,
    required this.fullName,
    required this.phoneNumber,
    required this.profile,
    required this.userName,
    this.onDeletePressed,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color roleColor = Colors.white;
    if (role?.toLowerCase() == "admin") {
      roleColor = adminColor;
    } else if (role?.toLowerCase() == "moderator") {
      roleColor = moderatorColor;
    } else if (role?.toLowerCase() == "user") {
      roleColor = userColor;
    }

    return Container(
      padding: const EdgeInsets.only(top: 1, bottom: 15, left: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(240, 143, 40, 40).withOpacity(0.5),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: InkWell(
                onTap: () {
                  if ((profile) != "") {
                    Get.dialog(
                      ViewImage(
                        imageUrl: profile,
                      ),
                      transitionDuration: const Duration(milliseconds: 100),
                    );
                  }
                },
                child: CacheNetworkImageComponent(
                  imageUrl: profile,
                ),
              ),
            ),
          ),
          SizedBox(
            width: SPACING_10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextComponent(
                      text: fullName,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: roleColor,
                    ),
                    Row(
                      children: [
                        IconButton(
                          splashRadius: 20,
                          onPressed: onEditPressed,
                          icon: Icon(
                            Icons.edit,
                            color: BluePrimary,
                          ),
                        ),
                        IconButton(
                          splashRadius: 20,
                          onPressed: onDeletePressed,
                          icon: Icon(
                            Icons.delete,
                            color: RedPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextComponent(
                  text: '${'phone_number'.tr} : $phoneNumber',
                  color: BluePrimary,
                ),
                TextComponent(
                  text: '${'username'.tr} : $userName',
                  color: BluePrimary,
                ),
                SizedBox(
                  height: SPACING_10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
