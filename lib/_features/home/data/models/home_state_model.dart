import 'package:kamina_pokemon/_features/home/home.dart';

class HomeStateModel extends HomeStateEntity {
  const HomeStateModel({
    required super.pokemons,
    required super.canLoadMore,
    required super.filter,
  });

  Map<String, dynamic> toJson() {
    return {
      'pokemons': pokemons,
      'canLoadMore': canLoadMore,
      'filter': filter,
    };
  }

  factory HomeStateModel.fromJson(Map<String, dynamic> json) {
    return HomeStateModel(
      pokemons: _parsePokemon(json['pokemons']),
      canLoadMore: json['canLoadMore'] as bool,
      filter: json['filter'] as String,
    );
  }

  static List<Pokemon> _parsePokemon(dynamic json) {
    if (json is! List) {
      return [];
    }

    return json
        .map(
          (e) => Pokemon(
            id: e['id'],
            name: e['name'],
            caught: e['caught'],
            favorite: e['favorite'],
          ),
        )
        .toList();
  }
}
