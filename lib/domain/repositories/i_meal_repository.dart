import 'package:dartz/dartz.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';
import 'package:recipe_app/domain/entities/filter_types.dart';
import 'package:recipe_app/domain/entities/thumbnail_size.dart';
import 'package:recipe_app/infrastructure/dto/category_dto/category_dto.dart';
import 'package:recipe_app/infrastructure/dto/filter_result_dto/filter_result_dto.dart';
import 'package:recipe_app/infrastructure/dto/meal_dto/meal_dto.dart';

abstract class IMealRepository {
  Future<Either<MealDto, Failure>> fetchMealById({required String id});
  Future<Either<MealDto, Failure>> fetchRandomMeal();
  Future<Either<List<CategoryDto>, Failure>> fetchAllMealCategories();
  Future<Either<List<FilterResultDto>, Failure>> fetchFilterResults({
    required String query,
    required FilterType filterType,
  });
  String ingredientThumbUrl(
      {required String name, required ThumnbailSize thumbnailSize});
}
