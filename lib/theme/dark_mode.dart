import 'package:flutter/material.dart';
import 'package:signwave/constants/colors.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: MyColors.primaryColor,
    foregroundColor: Colors.white,
  ),
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: MyColors.primaryColor,
    secondary: MyColors.secondaryColor,
    onSurface: Colors.white,
    onInverseSurface: const Color.fromARGB(255, 59, 59, 59),
  ),
  textTheme: ThemeData.dark().textTheme.copyWith(
        bodyLarge: const TextStyle(color: Colors.white), // Body text color
        displayLarge:
            const TextStyle(color: Colors.white), // Display text color
        titleLarge: const TextStyle(
            color: Colors.white), // Customize other headline styles
        titleMedium:
            const TextStyle(color: Colors.white), // Customize subtitle styles
        labelSmall: const TextStyle(color: Colors.white),
      ),
);
