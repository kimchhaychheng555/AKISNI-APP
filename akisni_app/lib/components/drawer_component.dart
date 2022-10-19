import 'package:akisni_app/components/menu_item_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: BluePrimary,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 150,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: BluePrimary,
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
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
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
              const MenuItemComponent(title: 'Home'),
              const MenuItemComponent(title: 'Locator List'),
              const MenuItemComponent(title: 'Manage'),
              const MenuItemComponent(title: 'Permission'),
              const MenuItemComponent(title: 'User'),
              const MenuItemComponent(title: 'Track Location'),
              const MenuItemComponent(title: 'Logout'),
            ],
          ),
        ),
      ),
    );
  }
}
