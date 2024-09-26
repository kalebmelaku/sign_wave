import 'package:flutter/material.dart';
import 'package:signwave/components/widgets/custom_bottom_navbar.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: const Text("Setting"),
      bottomNavigationBar:
          CustomBottomNavigationBar(selectedIndex: _selectedIndex),
    );
  }
}
