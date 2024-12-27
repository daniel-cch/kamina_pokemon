import 'package:fpdart/fpdart.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/core/core.dart';

abstract class DetailRepository {
  Future<Either<Failure, PokemonDetail>> getDetail({required int id});
}
