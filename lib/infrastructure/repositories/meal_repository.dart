import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/domain/entities/filter_types.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/domain/entities/thumbnail_size.dart';
import 'package:recipe_app/domain/repositories/i_meal_repository.dart';
import 'package:recipe_app/infrastructure/dto/meal_dto/meal_dto.dart';
import 'package:recipe_app/infrastructure/dto/filter_result_dto/filter_result_dto.dart';
import 'package:recipe_app/infrastructure/dto/category_dto/category_dto.dart';
import 'package:recipe_app/services/http/http_client.dart';
import 'package:recipe_app/services/http/i_http_client.dart';
import 'package:recipe_app/utils/constants.dart';

final mealRepositoryProvider = Provider<IMealRepository>((ref) {
  final httpClient = ref.watch(httpClientProvider);
  return MealRepository(httpClient: httpClient);
});

/// Meal Repository Implementation
class MealRepository implements IMealRepository {
  const MealRepository({required final IHttpClient httpClient})
      : _httpClient = httpClient;
  final IHttpClient _httpClient;

  static const _baseUrl = 'https://www.themealdb.com/';
  static const _apiUrl = '${_baseUrl}api/json/v1/1/';

  @override
  Future<Either<List<CategoryDto>, Failure>> fetchAllMealCategories() {
    // TODO: implement fetchAllMealCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<List<FilterResultDto>, Failure>> fetchFilterResults(
      {required String query, required FilterType filterType}) {
    // TODO: implement fetchFilterResults
    throw UnimplementedError();
  }

  @override
  Future<Either<MealDto, Failure>> fetchMealById({required String id}) {
    // TODO: implement fetchMealById
    throw UnimplementedError();
  }

  @override
  Future<Either<MealDto, Failure>> fetchRandomMeal() async {
    const query = '${_apiUrl}random.php';
    final result = await _httpClient.get(path: query);
    return result.fold(
      (json) => left(MealDto.fromHttp(json)),
      (failure) => right(failure),
    );
  }

  @override
  String ingredientThumbUrl(
          {required String name, required ThumnbailSize thumbnailSize}) =>
      '$_baseUrl$imagesParam/$ingredientsParam/$name${thumbnailSize.uriQueryParameter}';
}
