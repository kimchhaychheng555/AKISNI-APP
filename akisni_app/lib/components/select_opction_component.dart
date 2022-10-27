import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';

class SelectOpctionComponent<T> extends StatelessWidget {
  const SelectOpctionComponent({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value,
    this.icon,
    this.placeholder,
    this.hintText,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  final T? value;
  final Widget? icon;
  final String? hintText;
  final String? placeholder;
  final void Function(T?)? onSaved;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final List<DropdownMenuItem<T>>? items;

  @override
  Widget build(BuildContext context) {
    const inputStyle = TextStyle(
      color: Colors.black,
      fontSize: 12,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextComponent(
          text: placeholder ?? "",
          color: BluePrimary,
          fontSize: DEFAULT_FONT_SIZE,
        ),
        const SizedBox(
          height: 10,
        ),
        DropdownButtonFormField<T>(
          value: value,
          items: items,
          onSaved: onSaved,
          isDense: true,
          isExpanded: true,
          validator: validator,
          onChanged: onChanged,
          icon: const Icon(Icons.keyboard_arrow_down),
          borderRadius: BorderRadius.circular(4),
          decoration: InputDecoration(
            fillColor: GrayQuaternary,
            filled: true,
            contentPadding: AppSpacing.paddingContentInputeText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: GraySeconday, width: 0.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            hintText: placeholder ?? 'please_select_item'.tr,
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Color(0xFFc8c4c4),
            ),
          ),
        ),
      ],
    );
  }
}
