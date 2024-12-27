import 'package:flutter/material.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class TypeWidget extends StatelessWidget {
  const TypeWidget({
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
          text: DetailTexts.type,
          style: AppTypography.heading(),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: AppSpacing.s,
          runSpacing: AppSpacing.s,
          children: pokemonDetail.types
              .map((type) => AppPill(description: type.name))
              .toList(),
        ),
      ],
    );
  }
}
