import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class UserListItem extends StatefulWidget {
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
  State<UserListItem> createState() => _UserListItemState();
}

class _UserListItemState extends State<UserListItem> {
  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 1, bottom: 15, left: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(
              color: widget.isActive == true ? BluePrimary : RedPrimary,
              width: 5),
        ),
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
            child: CircleAvatar(
              radius: 10.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  widget.profile.isEmpty
                      ? 'assets/images/profile_2.jpg'
                      : widget.profile,
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
                      text: widget.fullName,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFC63030),
                    ),
                    Row(
                      children: [
                        IconButton(
                          splashRadius: 20,
                          onPressed: (() {}),
                          icon: Icon(
                            Icons.edit,
                            color: BluePrimary,
                          ),
                        ),
                        IconButton(
                          splashRadius: 20,
                          onPressed: (() {}),
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
                  text: '${'phone_number'.tr} : ${widget.phoneNumber}',
                  color: const Color(0xFF3B65AF),
                ),
                TextComponent(
                  text: '${'username'.tr} : ${widget.userName}',
                  color: const Color(0xFF3B65AF),
                ),
                SizedBox(
                  height: SPACING_10,
                ),
                widget.isActive == true
                    ? const ButtonComponent(
                        isSurfix: true,
                        surfix: Icons.directions,
                        titleButton: 'direction',
                        height: 30,
                        width: 120,
                      )
                    : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
