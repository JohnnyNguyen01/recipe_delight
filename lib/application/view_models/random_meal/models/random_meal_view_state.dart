import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/meal/meal_entity.dart';

part 'random_meal_view_state.freezed.dart';

@freezed
class RandomMealViewState with _$RandomMealViewState {
  const factory RandomMealViewState({
    @Default(false) bool isLoading,
    @Default(MealEntity()) MealEntity meal,
  }) = _RandomMealViewState;
}
