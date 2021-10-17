import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/services/http/i_http_client.dart';
import 'package:recipe_app/utils/constants.dart';

/// Http Client provider
final httpClientProvider = Provider<IHttpClient>((ref) {
  final dio = Dio();
  return HttpClient(dio: dio);
});

/// Http Client implementation
class HttpClient implements IHttpClient {
  const HttpClient({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Either<T, Failure>> get<T>(
      {required String path, Map<String, dynamic>? headers}) async {
    try {
      final options = Options(headers: headers);
      final result = await _dio.get<T>(path, options: options);
      final data = result.data;
      if (data != null) {
        return Left(data);
      } else {
        return const Right(
          // TODO: Should use localized error via error code
          Failure(message: genericError),
        );
      }
    } on DioError catch (e) {
      return Right(Failure(message: e.message));
    }
  }
}
