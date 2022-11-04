import 'package:akisni/components/text_component.dart';
import 'package:flutter/material.dart';

class MenuItemComponent extends StatelessWidget {
  final String title;
  final IconData icons;
  final Function()? onClick;
  const MenuItemComponent({
    super.key,
    required this.icons,
    required this.title,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icons,
        color: Colors.white,
      ),
      dense: true,
      minVerticalPadding: 0,
      title: TextComponent(
        text: title,
      ),
      onTap: onClick,
    );
  }
}
