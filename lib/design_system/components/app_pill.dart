import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppPill extends StatelessWidget {
  const AppPill({
    super.key,
    required this.description,
    this.color,
  });

  final String description;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.l),
        color: color ?? AppColors.primary,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.l,
          vertical: AppSpacing.s,
        ),
        child: AppText(
          text: description,
          style: AppTypography.body(
            color: AppColors.darkText,
          ),
        ),
      ),
    );
  }
}
