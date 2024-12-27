import 'package:kamina_pokemon/_features/detail/detail.dart';

class AbilityModel extends Ability {
  const AbilityModel({
    required super.name,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) {
    return AbilityModel(
      name: json['ability']['name'] ?? '',
    );
  }
}
