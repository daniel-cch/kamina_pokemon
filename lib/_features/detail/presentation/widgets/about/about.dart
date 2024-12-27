import 'package:flutter/material.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/_features/detail/presentation/widgets/about/about_item.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class About extends StatelessWidget {
  const About({
    super.key,
    required this.pokemonDetail,
  });

  final PokemonDetail pokemonDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSpacing.s,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: DetailTexts.about,
          style: AppTypography.heading(),
        ),
        AboutItem(
          title: DetailTexts.baseXP,
          description: pokemonDetail.baseExperience.toString(),
        ),
        AboutItem(
          title: DetailTexts.width,
          description: pokemonDetail.weight.toString(),
        ),
        AboutItem(
          title: DetailTexts.height,
          description: pokemonDetail.height.toString(),
        ),
      ],
    );
  }
}
