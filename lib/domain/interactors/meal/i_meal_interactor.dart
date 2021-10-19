import 'package:dartz/dartz.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';
import 'package:recipe_app/domain/entities/meal/meal_entity.dart';
import 'package:recipe_app/domain/entities/meal_card/meal_card_entity.dart';

abstract class IMealInteractor {
  Future<Either<MealEntity, Failure>> fetchRandomMeal();

  /// Fetches the desired amount of [MealCardEntity]. If no amount is specified
  /// the default amount of five is provided.
  Future<Either<List<MealCardEntity>, Failure>> fetchRandomMealCards(
      {int? amount});
}
