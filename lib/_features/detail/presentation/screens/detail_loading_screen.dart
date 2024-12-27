import 'package:flutter/material.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class DetailLoadingScreen extends StatelessWidget {
  const DetailLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppLoadingSpinner(),
    );
  }
}
