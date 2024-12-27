import 'package:kamina_pokemon/_features/home/home.dart';

class HomeResponseModel extends HomeResponse {
  const HomeResponseModel({
    required super.count,
    required super.hasMore,
    required super.pokemon,
  });

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) {
    return HomeResponseModel(
      count: json['count'],
      hasMore: _parseHasMore(json['next']),
      pokemon: _parseList(json['results']),
    );
  }

  static List<Pokemon> _parseList(dynamic json) {
    json as List?;

    if (json == null || json.isEmpty) {
      return [];
    }

    return json.map((pokemon) => PokemonModel.fromJson(pokemon)).toList();
  }

  static bool _parseHasMore(dynamic json) {
    json as String?;

    if (json == null || json.isEmpty) {
      return false;
    }

    return true;
  }
}
