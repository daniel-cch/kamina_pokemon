import 'package:equatable/equatable.dart';
import 'package:kamina_pokemon/_features/home/home.dart';

class Pokemon extends Equatable {
  const Pokemon({
    required this.id,
    required this.name,
    required this.caught,
    required this.favorite,
  });

  final int id;
  final String name;
  final bool caught;
  final bool favorite;

  Pokemon copyWith({
    int? id,
    String? name,
    bool? caught,
    bool? favorite,
  }) {
    return PokemonModel(
      id: id ?? this.id,
      name: name ?? this.name,
      caught: caught ?? this.caught,
      favorite: favorite ?? this.favorite,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        caught,
        favorite,
      ];
}
