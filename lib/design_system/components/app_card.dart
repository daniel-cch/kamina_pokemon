import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.body,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.color,
  });

  final Widget body;
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? AppColors.primary,
        borderRadius: BorderRadius.circular(radius ?? AppRadius.l),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? AppSpacing.l),
        child: Center(
          child: body,
        ),
      ),
    );
  }
}
