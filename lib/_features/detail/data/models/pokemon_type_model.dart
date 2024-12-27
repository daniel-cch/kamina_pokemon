import 'package:kamina_pokemon/_features/detail/detail.dart';

class PokemonTypeModel extends PokemonType {
  const PokemonTypeModel({
    required super.name,
  });

  factory PokemonTypeModel.fromJson(Map<String, dynamic> json) {
    return PokemonTypeModel(
      name: json['type']['name'] ?? '',
    );
  }
}
