import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class CardIcons extends StatelessWidget {
  const CardIcons({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: pokemon.caught ? HomeTexts.release : HomeTexts.catchPokemon,
          child: AppIconButton(
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(
                HomeCatchEvent(id: pokemon.id),
              );
            },
            icon: Icon(
              pokemon.caught
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: AppColors.secondary,
            ),
          ),
        ),
        Tooltip(
          message: pokemon.favorite
              ? HomeTexts.removeFromFavorite
              : HomeTexts.addToFavorite,
          child: AppIconButton(
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(
                HomeLikeEvent(id: pokemon.id),
              );
            },
            icon: Icon(
              pokemon.favorite ? Icons.favorite : Icons.favorite_border,
              color: AppColors.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
