import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData defaultAppTheme = ThemeData(
  iconTheme: const IconThemeData(
    color: AppColors.secondaryColor,
    size: 24,
  ),
  colorScheme: const ColorScheme.light(secondary: AppColors.secondaryColor),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      color: AppColors.secondaryColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 2,
        color: AppColors.secondaryColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 2,
        color: AppColors.tertiaryColor,
      ),
    ),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  ).apply(
    bodyColor: AppColors.secondaryColor,
  ),
);
