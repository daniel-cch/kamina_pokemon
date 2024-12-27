import 'package:fpdart/fpdart.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/core/core.dart';

class DetailRepositoryImpl extends DetailRepository {
  DetailRepositoryImpl(this._service);

  final AppHttpBase _service;

  @override
  Future<Either<Failure, PokemonDetail>> getDetail({required int id}) async {
    try {
      final response = await _service.get('pokemon/$id');

      return Right(PokemonDetailModel.fromJson(response.data));
    } catch (e) {
      return Left(AppFailure(message: "Parse error"));
    }
  }
}
