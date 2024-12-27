import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        if (state is DetailLoadingState) {
          return DetailLoadingScreen();
        }

        if (state is DetailErrorState) {
          return DetailErrorScreen();
        }

        if (state is DetailLoadedState) {
          return DetailScreen(
            pokemonDetail: state.pokemonDetail,
          );
        }

        return const SizedBox();
      },
    );
  }
}
