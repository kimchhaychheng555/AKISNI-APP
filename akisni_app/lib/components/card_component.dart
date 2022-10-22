import 'package:flutter/material.dart';

import '../constants/constant.dart';

class CardComponent extends StatelessWidget {
  final Widget child;
  const CardComponent({
    super.key,
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
        child: child,
      ),
    );
  }
}
