import 'package:equatable/equatable.dart';
import 'package:kamina_pokemon/_features/home/home.dart';

class HomeResponse extends Equatable {
  const HomeResponse({
    required this.count,
    required this.hasMore,
    required this.pokemon,
  });

  final int count;
  final bool hasMore;
  final List<Pokemon> pokemon;

  @override
  List<Object?> get props => [
        count,
        hasMore,
        pokemon,
      ];
}
