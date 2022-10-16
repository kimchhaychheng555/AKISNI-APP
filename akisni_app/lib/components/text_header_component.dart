import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';

class TextHeaderComponent extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final FontStyle? fontStyle;
  final TextAlign textAlign;
  final TextDecoration? textDecoration;
  const TextHeaderComponent({
    Key? key,
    required this.text,
    this.fontFamily,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.fontStyle,
    this.textAlign = TextAlign.left,
    this.textDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextComponent(
      text: text,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: fontSize,
      height: height,
      fontStyle: fontStyle,
      textAlign: textAlign,
      textDecoration: textDecoration,
    );
  }
}
