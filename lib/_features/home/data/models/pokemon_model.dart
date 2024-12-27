import 'package:equatable/equatable.dart';
import 'package:kamina_pokemon/_features/home/home.dart';

class PokemonModel extends Pokemon with EquatableMixin {
  const PokemonModel({
    required super.id,
    required super.name,
    required super.caught,
    required super.favorite,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'caught': caught,
      'favorite': favorite,
    };
  }

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: _getId(json['url'] ?? ''),
      name: json['name'] ?? '',
      caught: false,
      favorite: false,
    );
  }

  static int _getId(dynamic json) {
    if (json is int) {
      return json;
    }

    json as String?;
    if (json == null || json.isEmpty) {
      return 0;
    }

    return UrlUtils.extractNumberFromUrl(json) ?? 0;
  }

  @override
  List<Object?> get props => [
        id,
        name,
        caught,
        favorite,
      ];
}
