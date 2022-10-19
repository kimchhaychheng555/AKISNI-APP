import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../components/button_component.dart';
import '../../../components/card_component.dart';

class UserListItem extends StatelessWidget {
  final String fullName;
  final String phoneNumber;
  final String profile;
  final bool isActive;
  final String userName;
  const UserListItem({
    super.key,
    required this.fullName,
    required this.phoneNumber,
    required this.profile,
    this.isActive = true,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return CardComponent(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 80,
              height: 80,
              child: CircleAvatar(
                radius: 10.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    profile.isEmpty
                        ? 'assets/images/profile_2.jpg'
                        : '${profile}',
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [],
              ),
              Badge(
                badgeColor: isActive ? ActiveColor : DeActiveColor,
                badgeContent: Text(''),
                child: TextComponent(
                  text: '${fullName}',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFC63030),
                ),
              ),
              TextComponent(
                text: '${'phone_number'.tr} : ${phoneNumber}',
                color: Color(0xFF3B65AF),
              ),
              TextComponent(
                text: '${'user_name'.tr} : ${userName}',
                color: Color(0xFF3B65AF),
              ),
              isActive == true
                  ? ButtonComponent(
                      titleButton: 'direction',
                      width: 120,
                    )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}
