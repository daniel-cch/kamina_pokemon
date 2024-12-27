import 'package:kamina_pokemon/core/core.dart';

class AppHttpService extends AppHttpBase {
  AppHttpService() : super(baseUrl: '${AppConstants.baseUrl}v2/');
}
