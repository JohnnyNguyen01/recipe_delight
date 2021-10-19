import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/meal_card/meal_card_entity.dart';

part 'home_view_state.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(<MealCardEntity>[]) List<MealCardEntity> latestRecipes,
    @Default(false) bool isLoading,
  }) = _HomeViewState;
}
