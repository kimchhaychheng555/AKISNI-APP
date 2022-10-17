import 'package:akisni_app/components/menu_item_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:googleapis/cloudasset/v1.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.pramiryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColors.pramiryColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: CircleAvatar(
                              radius: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset('assets/images/icon.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              TextComponent(
                                text: 'Chay',
                                fontSize: 18,
                              ),
                              TextComponent(
                                text: 'admin',
                                fontSize: 14,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            MenuItemComponent(title: 'Home'),
            MenuItemComponent(title: 'Locator List'),
            MenuItemComponent(title: 'Manage'),
            MenuItemComponent(title: 'Permission'),
            MenuItemComponent(title: 'User'),
            MenuItemComponent(title: 'Track Location'),
            MenuItemComponent(title: 'Logout'),
          ],
        ),
      ),
    );
  }
}
