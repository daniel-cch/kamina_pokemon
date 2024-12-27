import 'package:flutter/material.dart';

import '../design_system.dart';

class LightTheme {
  const LightTheme._();

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.lightText),
      displayMedium: TextStyle(color: AppColors.lightText),
      displaySmall: TextStyle(color: AppColors.lightText),
      headlineLarge: TextStyle(color: AppColors.lightText),
      headlineMedium: TextStyle(color: AppColors.lightText),
      headlineSmall: TextStyle(color: AppColors.lightText),
      titleLarge: TextStyle(color: AppColors.lightText),
      titleMedium: TextStyle(color: AppColors.lightText),
      titleSmall: TextStyle(color: AppColors.lightText),
      bodyLarge: TextStyle(color: AppColors.lightText),
      bodyMedium: TextStyle(color: AppColors.lightText),
      bodySmall: TextStyle(color: AppColors.lightText),
      labelLarge: TextStyle(color: AppColors.lightText),
      labelMedium: TextStyle(color: AppColors.lightText),
      labelSmall: TextStyle(color: AppColors.lightText),
    ),
  );
}
