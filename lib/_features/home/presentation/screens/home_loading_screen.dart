import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class HomeLoadingScreen extends StatelessWidget {
  const HomeLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppLoadingSpinner(),
    );
  }
}
