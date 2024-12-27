import 'package:fpdart/fpdart.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/core/core.dart';

abstract class HomeStorageService {
  Future<Either<Failure, HomeStateEntity>> getItems();
  Future<Option<Failure>> saveItems({required Map<String, dynamic> json});
}
