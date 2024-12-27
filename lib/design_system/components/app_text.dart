import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.textAlign,
    this.style,
  });

  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ?? AppTypography.body(),
    );
  }
}
