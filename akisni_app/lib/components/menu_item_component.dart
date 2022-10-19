import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';

class MenuItemComponent extends StatelessWidget {
  final String title;
  final Function? onClick;
  const MenuItemComponent({
    super.key,
    required this.title,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      minVerticalPadding: 0,
      title: TextComponent(
        text: title,
      ),
      onTap: () {
        onClick!();
      },
    );
  }
}
