import 'package:flutter/material.dart';
import 'package:signwave/constants/colors.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: MyColors.primaryColor,
    secondary: MyColors.secondaryColor,
    onSurface: Colors.white,
    onInverseSurface: const Color.fromARGB(255, 59, 59, 59),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: Colors.white,
      ),
);
