import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/ingredient/ingredient_detail.dart';
import 'package:recipe_app/infrastructure/dto/meal_dto/meal_dto.dart';

part 'meal_entity.freezed.dart';
part 'meal_entity.g.dart';

/// Meal Entity
///
/// Value object that is passed and used via view-models.
@freezed
class MealEntity with _$MealEntity {
  const factory MealEntity({
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String thumbnailUrl,
    @Default('') String videoUrl,
    @Default(<String>[]) List<String> categories,
    @Default('') String region,
    @Default(<String>[]) List<String> instructions,
    @Default(<IngredientDetail>[]) List<IngredientDetail> ingredientDetails,
  }) = _MealEntity;

  const MealEntity._();

  factory MealEntity.fromJson(Map<String, dynamic> json) =>
      _$MealEntityFromJson(json);

  /// Helper method to convert Data transfer object to Domain Entity
  factory MealEntity.fromDto(MealDto mealDto) {
    final mealMap = mealDto.toJson();
    final categories = mealDto.strCategory.split(',').toList();
    final ingredients = <String>[];
    final measurements = <String>[];
    for (int i = 1; i < 20; i++) {
      final ingredient = mealMap['strIngredient$i'] as String?;
      if (ingredient != null && ingredient.isNotEmpty) {
        ingredients.add(ingredient);
      }
      final measurement = mealMap['strMeasure$i'] as String?;
      if (measurement != null && measurement.isNotEmpty) {
        measurements.add(measurement);
      }
    }
    final ingredientDetails = <IngredientDetail>[];
    for (int i = 1; i < ingredients.length; i++) {
      ingredientDetails.add(
        IngredientDetail(name: ingredients[i], measurement: measurements[i]),
      );
    }
    final instructions = mealDto.strInstructions.split('\r\n\r\n').toList();
    return MealEntity(
        name: mealDto.strMeal,
        imageUrl: mealDto.strMealThumb,
        thumbnailUrl: '${mealDto.strMealThumb}/preview',
        videoUrl: mealDto.strYoutube,
        categories: categories,
        region: mealDto.strArea,
        ingredientDetails: ingredientDetails,
        instructions: instructions);
  }
}
