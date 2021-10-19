import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/domain/entities/meal/meal_entity.dart';
import 'package:recipe_app/domain/entities/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/domain/entities/meal_card/meal_card_entity.dart';
import 'package:recipe_app/domain/entities/thumbnail_size.dart';
import 'package:recipe_app/domain/interactors/meal/i_meal_interactor.dart';
import 'package:recipe_app/domain/repositories/i_meal_repository.dart';
import 'package:recipe_app/infrastructure/repositories/meal_repository.dart';

final mealInteractorProvider = Provider<IMealInteractor>((ref) {
  final mealRepo = ref.watch(mealRepositoryProvider);
  return MealInteractor(mealRepo: mealRepo);
});

class MealInteractor implements IMealInteractor {
  const MealInteractor({required final IMealRepository mealRepo})
      : _mealRepo = mealRepo;

  final IMealRepository _mealRepo;

  @override
  Future<Either<MealEntity, Failure>> fetchRandomMeal() async {
    final response = await _mealRepo.fetchRandomMeal();
    return response.fold(
      (mealDto) {
        final mealEntity = MealEntity.fromDto(mealDto);
        final ingredientDetails = mealEntity.ingredientDetails
            .map(
              (detail) => detail.copyWith(
                thumbnailUrl: _mealRepo.ingredientThumbUrl(
                  name: detail.name ?? '',
                  thumbnailSize: ThumnbailSize.small,
                ),
              ),
            )
            .toList();
        log(ingredientDetails[0].toString());
        return Left(mealEntity.copyWith(ingredientDetails: ingredientDetails));
      },
      (failure) => Right(failure),
    );
  }

  @override
  Future<Either<List<MealCardEntity>, Failure>> fetchRandomMealCards(
      {int? amount}) async {
    final numberOfCards = amount ?? 5;
    final mealCards = <MealCardEntity>[];
    Failure? error;
    for (int i = 0; i < numberOfCards; i++) {
      final response = await fetchRandomMeal();
      response.fold(
        (mealEntity) => mealCards.add(
          MealCardEntity(
            title: mealEntity.name,
            subtitle: mealEntity.region,
            category: mealEntity.categories[0],
            imageUrl: mealEntity.imageUrl,
          ),
        ),
        (failure) => error = failure,
      );
    }
    final failure = error;
    if (failure != null) {
      return right(failure);
    } else {
      return left(mealCards);
    }
  }
}
