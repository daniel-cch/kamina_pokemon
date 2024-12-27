import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppIconButtonExternal extends StatelessWidget {
  const AppIconButtonExternal({
    super.key,
    required this.description,
    this.icon,
    this.onPressed,
  });

  final String description;
  final Icon? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: AppSpacing.xS,
      children: [
        IconButton(
          onPressed: onPressed,
          color: AppColors.primary,
          iconSize: 40,
          icon: icon ?? Icon(Icons.sync),
        ),
        AppText(text: description),
      ],
    );
  }
}
