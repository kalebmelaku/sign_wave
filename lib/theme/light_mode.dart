import 'package:flutter/material.dart';
import 'package:signwave/constants/colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: MyColors.backgroundColor,
    primary: MyColors.primaryColor,
    secondary: MyColors.secondaryColor,
    onInverseSurface: Colors.white,
    onSurface: const Color.fromARGB(255, 59, 59, 59),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: Colors.black,
      ),
);
