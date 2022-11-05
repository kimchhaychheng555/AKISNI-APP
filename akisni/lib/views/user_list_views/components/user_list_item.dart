import 'package:akisni/components/button_component.dart';
import 'package:akisni/components/text_component.dart';
import 'package:akisni/constants/constant.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/card_component.dart';

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
    return CardComponent(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [],
                    ),
                    Badge(
                      badgeColor: widget.isActive ? ActiveColor : DeActiveColor,
                      badgeContent: const Text(''),
                      child: TextComponent(
                        text: widget.fullName,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFC63030),
                      ),
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
                Expanded(
                  child: InkWell(
                    onTap: () => _key.currentState?.showButtonMenu(),
                    child: const Icon(Icons.more_vert),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        ],
      ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       flex: 1,
      //       child: SizedBox(
      //         width: 80,
      //         height: 80,
      //         child: CircleAvatar(
      //           radius: 10.0,
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(50.0),
      //             child: Image.asset(
      //               profile.isEmpty ? 'assets/images/profile_2.jpg' : profile,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Row(
      //           children: const [],
      //         ),
      //         Badge(
      //           badgeColor: isActive ? ActiveColor : DeActiveColor,
      //           badgeContent: const Text(''),
      //           child: TextComponent(
      //             text: fullName,
      //             fontSize: 18,
      //             fontWeight: FontWeight.w500,
      //             color: const Color(0xFFC63030),
      //           ),
      //         ),
      //         TextComponent(
      //           text: '${'phone_number'.tr} : $phoneNumber',
      //           color: const Color(0xFF3B65AF),
      //         ),
      //         TextComponent(
      //           text: '${'user_name'.tr} : $userName',
      //           color: const Color(0xFF3B65AF),
      //         ),
      //         isActive == true
      //             ? const ButtonComponent(
      //                 titleButton: 'direction',
      //                 width: 120,
      //               )
      //             : Container()
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
