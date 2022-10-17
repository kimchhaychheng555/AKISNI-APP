import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:googleapis/chat/v1.dart';

class MenuItemComponent extends StatelessWidget {
  final String title;
  final Function? OnClick;
  const MenuItemComponent({
    super.key,
    required this.title,
    this.OnClick,
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
        OnClick!();
      },
    );
  }
}
