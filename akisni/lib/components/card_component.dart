import 'package:akisni/components/text_component.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';

class CardComponent extends StatelessWidget {
  final Widget child;
  final String? title;
  final bool isHasTitle;
  const CardComponent({
    super.key,
    this.title,
    this.isHasTitle = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 3,
      shadowColor: const Color.fromARGB(255, 244, 192, 192).withOpacity(0.5),
      margin: EdgeInsets.only(bottom: SPACING_15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isHasTitle == true
                ? Column(
                    children: [
                      TextComponent(
                        text: '$title',
                        fontWeight: FontWeight.w500,
                        color: RedPrimary,
                      ),
                      SizedBox(
                        height: SPACING_10,
                      ),
                    ],
                  )
                : const SizedBox(
                    height: 0,
                  ),
            child,
          ],
        ),
      ),
    );
  }
}
