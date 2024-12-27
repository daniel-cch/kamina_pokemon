import 'package:kamina_pokemon/_features/detail/detail.dart';

class PokemonDetail {
  const PokemonDetail({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.weight,
    required this.height,
    required this.types,
    required this.stats,
    required this.abilities,
    required this.sprites,
  });

  final int id;
  final String name;
  final num baseExperience;
  final num weight;
  final num height;
  final List<PokemonType> types;
  final List<Stat> stats;
  final List<Ability> abilities;
  final Sprites sprites;
}
