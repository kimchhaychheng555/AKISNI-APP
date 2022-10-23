import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SelectOpctionComponenet extends StatelessWidget {
  final String? dropdownValue;
  final List<String> dataValue;
  const SelectOpctionComponenet({
    super.key,
    required this.dataValue,
    this.dropdownValue = '',
  });

  @override
  Widget build(BuildContext context) {
    print("==");
    print(dataValue);
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? value) {
        dropdownValue == value;
      },
      items: dataValue.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
