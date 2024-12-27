import 'package:dio/dio.dart';

abstract class AppHttpBase {
  AppHttpBase({
    required this.baseUrl,
  });

  final String baseUrl;
  final Dio dio = Dio();

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.get(
      '$baseUrl/$path',
      queryParameters: queryParameters,
    );
  }
}
