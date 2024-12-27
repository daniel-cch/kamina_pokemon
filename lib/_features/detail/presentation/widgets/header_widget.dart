import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.pokemonDetail,
  });

  final PokemonDetail pokemonDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCard(
          width: 100,
          height: 100,
          color: AppColors.secondary,
          padding: 0,
          body: CachedNetworkImage(
            imageUrl: pokemonDetail.sprites.front,
          ),
        ),
        AppText(
          text: pokemonDetail.name,
          style: AppTypography.heading(),
        ),
        AppText(
          text: '#${pokemonDetail.id}',
          style: AppTypography.body(color: AppColors.primary),
        ),
      ],
    );
  }
}
