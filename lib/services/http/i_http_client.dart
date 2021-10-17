import 'package:dartz/dartz.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';

abstract class IHttpClient {
  Future<Either<T, Failure>> get<T>({
    required String path,
    Map<String, dynamic>? headers,
  });
}
