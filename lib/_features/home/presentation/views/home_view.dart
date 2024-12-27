import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeErrorLoadingMoreState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              content: AppText(
                text: HomeTexts.errorLoadingMore,
                style: AppTypography.body(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return HomeLoadingScreen();
        }

        if (state is HomeErrorState) {
          return HomeErrorScreen();
        }

        return HomeLoadedScreen();
      },
    );
  }
}
