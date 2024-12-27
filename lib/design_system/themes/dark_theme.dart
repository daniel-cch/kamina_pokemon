import 'package:flutter/material.dart';

import '../design_system.dart';

class DarkTheme {
  const DarkTheme._();

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.darkText),
      displayMedium: TextStyle(color: AppColors.darkText),
      displaySmall: TextStyle(color: AppColors.darkText),
      headlineLarge: TextStyle(color: AppColors.darkText),
      headlineMedium: TextStyle(color: AppColors.darkText),
      headlineSmall: TextStyle(color: AppColors.darkText),
      titleLarge: TextStyle(color: AppColors.darkText),
      titleMedium: TextStyle(color: AppColors.darkText),
      titleSmall: TextStyle(color: AppColors.darkText),
      bodyLarge: TextStyle(color: AppColors.darkText),
      bodyMedium: TextStyle(color: AppColors.darkText),
      bodySmall: TextStyle(color: AppColors.darkText),
      labelLarge: TextStyle(color: AppColors.darkText),
      labelMedium: TextStyle(color: AppColors.darkText),
      labelSmall: TextStyle(color: AppColors.darkText),
    ),
  );
}
