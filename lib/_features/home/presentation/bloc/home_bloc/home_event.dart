part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

final class HomeInitEvent extends HomeEvent {
  const HomeInitEvent();

  @override
  List<Object> get props => [];
}

final class HomeLoadMoreEvent extends HomeEvent {
  const HomeLoadMoreEvent();

  @override
  List<Object> get props => [];
}

final class HomeCatchEvent extends HomeEvent {
  const HomeCatchEvent({
    required this.id,
  });

  final int id;

  @override
  List<Object> get props => [id];
}

final class HomeLikeEvent extends HomeEvent {
  const HomeLikeEvent({
    required this.id,
  });

  final int id;

  @override
  List<Object> get props => [id];
}

final class HomeFilterEvent extends HomeEvent {
  const HomeFilterEvent({
    required this.filter,
  });

  final String filter;

  @override
  List<Object> get props => [filter];
}
