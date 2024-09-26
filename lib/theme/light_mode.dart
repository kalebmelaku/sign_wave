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
  textTheme: ThemeData.light().textTheme.copyWith(
        bodyLarge: const TextStyle(color: Colors.black87), // Body text color
        displayLarge:
            const TextStyle(color: Colors.black87), // Display text color
        titleLarge: const TextStyle(
            color: Colors.black87), // Customize other headline styles
        titleMedium:
            const TextStyle(color: Colors.black87), // Customize subtitle styles
        labelSmall: const TextStyle(color: Colors.black87),
      ),
);
