part of 'detail_bloc.dart';

sealed class DetailState extends Equatable {
  const DetailState();
}

final class DetailInitialState extends DetailState {
  const DetailInitialState();

  @override
  List<Object> get props => [];
}

final class DetailLoadingState extends DetailState {
  const DetailLoadingState();

  @override
  List<Object> get props => [];
}

final class DetailLoadedState extends DetailState {
  const DetailLoadedState({
    required this.pokemonDetail,
  });

  final PokemonDetail pokemonDetail;

  @override
  List<Object> get props => [
        pokemonDetail,
      ];
}

final class DetailErrorState extends DetailState {
  const DetailErrorState();

  @override
  List<Object> get props => [];
}
