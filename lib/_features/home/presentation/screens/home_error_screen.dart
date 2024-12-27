import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class HomeErrorScreen extends StatelessWidget {
  const HomeErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.l,
        children: [
          const AppText(text: HomeTexts.error),
          AppIconButtonExternal(
            description: HomeTexts.tryAgain,
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(HomeInitEvent());
            },
          ),
        ],
      ),
    );
  }
}
