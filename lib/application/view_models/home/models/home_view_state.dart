import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/meal/meal_entity.dart';

part 'home_view_state.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(false) bool isLoading,
    @Default(MealEntity()) MealEntity meal,
  }) = _HomeViewState;
}
