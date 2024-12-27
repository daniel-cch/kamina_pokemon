import 'package:flutter/material.dart';

class AppTypography {
  const AppTypography._();

  static TextStyle title({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 28,
        fontWeight: fontWeight ?? FontWeight.w800,
        color: color,
      );

  static TextStyle heading({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 24,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color,
      );

  static TextStyle body({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: 16,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: color,
      );
}
