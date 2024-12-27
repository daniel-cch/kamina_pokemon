import 'package:kamina_pokemon/_features/detail/detail.dart';

class PokemonDetailModel extends PokemonDetail {
  const PokemonDetailModel({
    required super.id,
    required super.name,
    required super.baseExperience,
    required super.weight,
    required super.height,
    required super.types,
    required super.stats,
    required super.abilities,
    required super.sprites,
  });

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) {
    return PokemonDetailModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      baseExperience: json['base_experience'] ?? '',
      weight: json['weight'] ?? 0,
      height: json['height'] ?? 0,
      types: _parseTypes(json['types']),
      stats: _parseStats(json['stats']),
      abilities: _parseAbilities(json['abilities']),
      sprites: SpritesModel.fromJson(json['sprites'] ?? {}),
    );
  }

  static List<PokemonType> _parseTypes(dynamic json) {
    if (json is! List<dynamic>) {
      return [];
    }

    return json.map((type) => PokemonTypeModel.fromJson(type)).toList();
  }

  static List<Stat> _parseStats(dynamic json) {
    if (json is! List<dynamic>) {
      return [];
    }

    return json.map((stat) => StatModel.fromJson(stat)).toList();
  }

  static List<Ability> _parseAbilities(dynamic json) {
    if (json is! List<dynamic>) {
      return [];
    }

    return json.map((ability) => AbilityModel.fromJson(ability)).toList();
  }
}
