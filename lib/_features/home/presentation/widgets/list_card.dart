import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/_features/home/presentation/widgets/card_icons.dart';
import 'package:kamina_pokemon/core/app_router/app_router.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.s),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppRadius.l),
        onTap: () {
          context.router.push(
            DetailRoute(
              id: pokemon.id,
            ),
          );
        },
        child: AppCard(
          body: Row(
            children: [
              Expanded(
                child: AppText(
                  text: pokemon.name,
                  style: AppTypography.body(
                    color: AppColors.darkText,
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.s),
              CardIcons(
                pokemon: pokemon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
