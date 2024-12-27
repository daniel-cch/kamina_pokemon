import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppLoadingSpinner extends StatelessWidget {
  const AppLoadingSpinner({
    super.key,
    this.size,
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? 80,
      height: size ?? 80,
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }
}
