import 'package:flutter/material.dart';
import 'package:signwave/constants/style.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<String> items = [
    'Amharic',
    'English',
    'Somali',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      style: minTextStyle(context),
      value: selectedValue,
      icon: const Icon(Icons.language),
      hint: const Text('Select Language'), // Placeholder text
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
    );
  }
}
