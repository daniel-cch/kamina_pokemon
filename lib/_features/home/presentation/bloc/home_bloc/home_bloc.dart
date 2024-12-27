import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kamina_pokemon/_features/home/home.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._repository, this._storage)
      : super(
          HomeInitialState(
            pokemons: [],
            canLoadMore: false,
            filter: '',
          ),
        ) {
    on<HomeInitEvent>(_homeInitEvent);
    on<HomeLoadMoreEvent>(_homeLoadMoreEvent);
    on<HomeCatchEvent>(_homeCatchEvent);
    on<HomeLikeEvent>(_homeLikeEvent);
    on<HomeFilterEvent>(_homeFilterEvent);
  }

  final HomeRepository _repository;
  final HomeStorageService _storage;
  final int limit = 20;

  Future<void> _homeInitEvent(HomeInitEvent event, Emitter emit) async {
    emit(
      HomeLoadingState(
        pokemons: [],
        canLoadMore: false,
        filter: '',
      ),
    );

    final storageResponse = await _storage.getItems();
    final storageResponseFold = storageResponse.fold(
      (error) => error,
      (data) => data,
    );

    if (storageResponseFold is HomeStateEntity) {
      emit(
        HomeInitialState(
          pokemons: storageResponseFold.pokemons,
          canLoadMore: storageResponseFold.canLoadMore,
          filter: storageResponseFold.filter,
        ),
      );
      return;
    }

    final response = await _repository.getItems(offset: 0, limit: limit);

    response.fold(
      (error) {
        emit(
          HomeErrorState(
            pokemons: [],
            canLoadMore: false,
            message: error.message ?? '',
            filter: '',
          ),
        );
      },
      (data) {
        emit(
          HomeInitialState(
            pokemons: data.pokemon,
            canLoadMore: data.hasMore,
            filter: '',
          ),
        );

        _storage.saveItems(
          json: {
            'pokemons': data.pokemon,
            'canLoadMore': data.hasMore,
            'filter': '',
          },
        );
      },
    );
  }

  Future<void> _homeLoadMoreEvent(HomeLoadMoreEvent event, Emitter emit) async {
    emit(
      HomeLoadingMoreState(
        pokemons: state.pokemons,
        canLoadMore: state.canLoadMore,
        filter: state.filter,
      ),
    );

    await Future.delayed(Duration(seconds: 3));
    final response = await _repository.getItems(
      offset: state.pokemons.length,
      limit: limit,
    );

    response.fold(
      (error) {
        emit(
          HomeErrorLoadingMoreState(
            pokemons: state.pokemons,
            canLoadMore: state.canLoadMore,
            filter: state.filter,
          ),
        );
      },
      (data) {
        final list = state.pokemons + data.pokemon;

        emit(
          HomeInitialState(
            pokemons: list,
            canLoadMore: data.hasMore,
            filter: state.filter,
          ),
        );
      },
    );
  }

  void _homeCatchEvent(HomeCatchEvent event, Emitter emit) {
    List<Pokemon> list = List.from(state.pokemons);
    final index = list.indexWhere((e) => e.id == event.id);
    final oldPokemon = list[index];
    list[index] = oldPokemon.copyWith(caught: !oldPokemon.caught);

    emit(
      HomeInitialState(
        pokemons: list,
        canLoadMore: state.canLoadMore,
        filter: state.filter,
      ),
    );
  }

  void _homeLikeEvent(HomeLikeEvent event, Emitter emit) {
    List<Pokemon> list = List.from(state.pokemons);
    final index = list.indexWhere((e) => e.id == event.id);
    final oldPokemon = list[index];
    list[index] = oldPokemon.copyWith(favorite: !oldPokemon.favorite);

    emit(
      HomeInitialState(
        pokemons: list,
        canLoadMore: state.canLoadMore,
        filter: state.filter,
      ),
    );
  }

  void _homeFilterEvent(HomeFilterEvent event, Emitter emit) {
    emit(
      HomeInitialState(
        pokemons: state.pokemons,
        canLoadMore: state.canLoadMore,
        filter: event.filter.toLowerCase(),
      ),
    );
  }
}
