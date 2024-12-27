import 'package:flutter/material.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.pokemonDetail,
  });

  final PokemonDetail pokemonDetail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: ListView(
        padding: EdgeInsets.all(AppSpacing.l),
        children: [
          HeaderWidget(pokemonDetail: pokemonDetail),
          SizedBox(height: AppSpacing.l * 2),
          CatchButton(),
          SizedBox(height: AppSpacing.l * 2),
          About(pokemonDetail: pokemonDetail),
          if (pokemonDetail.types.isNotEmpty)
            SizedBox(height: AppSpacing.l * 2),
          if (pokemonDetail.types.isNotEmpty)
            TypeWidget(pokemonDetail: pokemonDetail),
          if (pokemonDetail.stats.isNotEmpty)
            SizedBox(height: AppSpacing.l * 2),
          if (pokemonDetail.stats.isNotEmpty)
            StatsWidget(pokemonDetail: pokemonDetail),
          if (pokemonDetail.abilities.isNotEmpty)
            SizedBox(height: AppSpacing.l * 2),
          if (pokemonDetail.abilities.isNotEmpty)
            AbilitiesWidget(pokemonDetail: pokemonDetail),
          SizedBox(height: AppSpacing.l * 2),
          FavoriteButton(),
          SizedBox(height: AppSpacing.l * 2),
        ],
      ),
    );
  }
}
