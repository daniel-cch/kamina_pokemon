part of 'detail_bloc.dart';

sealed class DetailEvent extends Equatable {
  const DetailEvent();
}

class DetailInitEvent extends DetailEvent {
  const DetailInitEvent({
    required this.id,
  });

  final int id;

  @override
  List<Object?> get props => [
        id,
      ];
}
