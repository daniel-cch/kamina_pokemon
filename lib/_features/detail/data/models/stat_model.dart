import 'package:kamina_pokemon/_features/detail/detail.dart';

class StatModel extends Stat {
  const StatModel({
    required super.name,
    required super.baseStat,
  });

  factory StatModel.fromJson(Map<String, dynamic> json) {
    return StatModel(
      name: json['stat']['name'] as String,
      baseStat: json['base_stat'] ?? 0,
    );
  }
}
