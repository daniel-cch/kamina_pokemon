import 'package:fpdart/fpdart.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/core/core.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._service);

  final AppHttpBase _service;

  @override
  Future<Either<Failure, HomeResponse>> getItems({
    required int offset,
    required int limit,
  }) async {
    try {
      final response = await _service.get(
        'pokemon',
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
      );

      return Right(HomeResponseModel.fromJson(response.data));
    } catch (e) {
      return Left(AppFailure(message: "Parse error"));
    }
  }
}
