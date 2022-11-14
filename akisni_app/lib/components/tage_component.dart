import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';

class TageComponent extends StatelessWidget {
  final String label;
  final Function? onClick;
  const TageComponent({
    super.key,
    required this.label,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: () {
        onClick;
      },
      backgroundColor: const Color(0xFFE1E4F3),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      label: TextComponent(
        text: 'Term 5 year',
        color: BluePrimary,
      ),
    );
  }
}
