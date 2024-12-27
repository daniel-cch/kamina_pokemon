import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    super.key,
    this.controller,
    this.focusNode,
    this.onSubmitted,
    this.onChanged,
    this.onTapOutside,
    this.hintText,
    this.icon,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final Function(PointerDownEvent)? onTapOutside;
  final String? hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      onTapOutside: onTapOutside,
      style: TextStyle(color: AppColors.darkText),
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AppColors.primary,
        prefixIcon: icon,
        hintStyle: TextStyle(color: AppColors.darkText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.l),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
