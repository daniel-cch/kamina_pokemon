import 'package:equatable/equatable.dart';
import 'package:kamina_pokemon/_features/home/home.dart';

class HomeStateEntity extends Equatable {
  const HomeStateEntity({
    required this.pokemons,
    required this.canLoadMore,
    required this.filter,
  });

  final List<Pokemon> pokemons;
  final bool canLoadMore;
  final String filter;

  @override
  List<Object> get props => [
        pokemons,
        canLoadMore,
        filter,
      ];
}
