import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/_features/home/presentation/bloc/bloc.dart';
import 'package:kamina_pokemon/core/core.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: BlocProvider.of<HomeBloc>(context),
      builder: (context, HomeState state) {
        if (state.pokemons.isEmpty) {
          return SizedBox();
        }

        final id = (context.routeData.args as DetailRouteArgs).id;
        var pokemon = state.pokemons.firstWhere((e) => e.id == id);

        return AppButton(
          onPressed: () {
            BlocProvider.of<HomeBloc>(context).add(
              HomeLikeEvent(id: pokemon.id),
            );
          },
          icon: pokemon.favorite ? Icons.favorite : Icons.favorite_border,
          text: pokemon.favorite
              ? DetailTexts.removeFromFavorite
              : DetailTexts.addToFavorite,
        );
      },
    );
  }
}
