import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AboutItem extends StatelessWidget {
  const AboutItem({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          text: '$title:',
          style: AppTypography.body(fontWeight: FontWeight.w400),
        ),
        const SizedBox(width: AppSpacing.s),
        AppText(
          text: description,
          style: AppTypography.body(color: AppColors.primary),
        ),
      ],
    );
  }
}
