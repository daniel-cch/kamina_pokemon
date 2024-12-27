import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive.dart';
import 'package:kamina_pokemon/_features/home/data/models/home_state_model.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/core/failure.dart';

class HomeStorageServiceImpl extends HomeStorageService {
  HomeStorageServiceImpl(this._storage);

  final HiveInterface _storage;
  final String boxName = 'home';
  final String stateKey = 'homeState';

  @override
  Future<Either<Failure, HomeStateEntity>> getItems() async {
    try {
      await _storage.openBox(boxName);
      final Box box = _storage.box(boxName);
      final String? json = await box.get(stateKey, defaultValue: null);

      if (json == null) {
        return Left(AppFailure());
      }

      final state = HomeStateModel.fromJson(jsonDecode(json));
      if (state.pokemons.isEmpty) {
        return Left(AppFailure());
      }

      return Right(state);
    } catch (e) {
      return Left(AppFailure());
    }
  }

  @override
  Future<Option<Failure>> saveItems({
    required Map<String, dynamic> json,
  }) async {
    await _storage.openBox(boxName);
    final Box box = _storage.box(boxName);
    final String parsedJson = jsonEncode(json);
    await box.put(stateKey, parsedJson);

    return const None();
  }
}
