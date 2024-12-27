import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc(this._repository) : super(const DetailInitialState()) {
    on<DetailInitEvent>(_detailInitEvent);
  }

  final DetailRepository _repository;

  Future<void> _detailInitEvent(DetailInitEvent event, Emitter emit) async {
    emit(DetailLoadingState());

    final response = await _repository.getDetail(id: event.id);
    response.fold(
      (error) {
        emit(DetailErrorState());
      },
      (data) {
        emit(DetailLoadedState(pokemonDetail: data));
      },
    );
  }
}
