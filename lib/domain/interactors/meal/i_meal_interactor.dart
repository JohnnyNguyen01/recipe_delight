import 'package:dartz/dartz.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';
import 'package:recipe_app/domain/entities/meal/meal_entity.dart';

abstract class IMealInteractor {
  Future<Either<MealEntity, Failure>> fetchRandomMeal();
}
