import 'package:kamina_pokemon/_features/detail/detail.dart';

class SpritesModel extends Sprites {
  const SpritesModel({
    required super.front,
    required super.back,
  });

  factory SpritesModel.fromJson(Map<String, dynamic> json) {
    return SpritesModel(
      front: json['front_default'] ?? '',
      back: json['back_default'] ?? '',
    );
  }
}
