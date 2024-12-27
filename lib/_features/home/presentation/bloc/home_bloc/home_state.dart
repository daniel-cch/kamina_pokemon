part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState({
    required this.pokemons,
    required this.canLoadMore,
    required this.filter,
  });

  final List<Pokemon> pokemons;
  final bool canLoadMore;
  final String filter;
}

final class HomeInitialState extends HomeState {
  const HomeInitialState({
    required super.pokemons,
    required super.canLoadMore,
    required super.filter,
  });

  @override
  List<Object> get props => [
        pokemons,
        canLoadMore,
        filter,
      ];
}

final class HomeLoadingState extends HomeState {
  const HomeLoadingState({
    required super.pokemons,
    required super.canLoadMore,
    required super.filter,
  });

  @override
  List<Object> get props => [
        pokemons,
        canLoadMore,
        filter,
      ];
}

final class HomeErrorState extends HomeState {
  const HomeErrorState({
    required super.pokemons,
    required this.message,
    required super.canLoadMore,
    required super.filter,
  });

  final String message;

  @override
  List<Object> get props => [
        pokemons,
        canLoadMore,
        message,
        filter,
      ];
}

final class HomeLoadingMoreState extends HomeState {
  const HomeLoadingMoreState({
    required super.pokemons,
    required super.canLoadMore,
    required super.filter,
  });

  @override
  List<Object> get props => [
        pokemons,
        canLoadMore,
        filter,
      ];
}

final class HomeErrorLoadingMoreState extends HomeState {
  const HomeErrorLoadingMoreState({
    required super.pokemons,
    required super.canLoadMore,
    required super.filter,
  });

  @override
  List<Object> get props => [
        pokemons,
        canLoadMore,
        filter,
      ];
}
