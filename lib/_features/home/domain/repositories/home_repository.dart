import 'package:fpdart/fpdart.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/core/core.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeResponse>> getItems({
    required int offset,
    required int limit,
  });
}
