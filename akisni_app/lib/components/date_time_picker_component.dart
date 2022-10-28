import 'package:akisni_app/components/text_component.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';

class DateTimePickerComponent extends StatelessWidget {
  final String? label;
  final String? initialValue;
  final void Function(String?)? onSelectonChange;
  const DateTimePickerComponent({
    super.key,
    this.label,
    this.initialValue,
    this.onSelectonChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSpacing.marginInputText,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextComponent(
            text: label ?? "",
            color: BluePrimary,
            fontSize: DEFAULT_FONT_SIZE,
          ),
          const SizedBox(height: 10),
          DateTimePicker(
            decoration: InputDecoration(
              contentPadding: AppSpacing.paddingContentInputeText,
              fillColor: GrayQuaternary,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: GraySeconday, width: 0.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: GraySeconday, width: 0.0),
              ),
            ),
            initialValue: initialValue,
            firstDate: DateTime(2000),
            style: const TextStyle(
              fontSize: 12,
            ),
            fieldHintText: label,
            lastDate: DateTime(2100),
            dateHintText: label,
            onSaved: onSelectonChange,
          ),
        ],
      ),
    );
  }
}
