import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/constant.dart';

class DateTimePickerComponent extends StatelessWidget {
  final String label;
  final void Function(String?)? onSelectonChange;
  const DateTimePickerComponent({
    super.key,
    this.label = 'Please Select Date',
    this.onSelectonChange,
  });

  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
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
      initialValue: label,
      firstDate: DateTime(2000),
      style: TextStyle(
        fontSize: 12,
      ),
      fieldHintText: label,
      lastDate: DateTime(2100),
      dateHintText: label,
      onSaved: onSelectonChange,
    );
  }
}
