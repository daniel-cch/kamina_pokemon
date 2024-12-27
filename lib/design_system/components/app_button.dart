import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.darkText,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.l),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: AppColors.darkText,
            ),
          if (icon != null) SizedBox(width: AppSpacing.s),
          AppText(
            text: text,
            style: AppTypography.body(
              color: AppColors.darkText,
            ),
          ),
        ],
      ),
    );
  }
}
