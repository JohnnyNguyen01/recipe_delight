import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_card_entity.freezed.dart';

@freezed
class MealCardEntity with _$MealCardEntity {
  const factory MealCardEntity({
    @Default('') String title,
    @Default('') String category,
    @Default('') String subtitle,
    @Default(false) bool isFavourited,
    @Default('') String imageUrl,
  }) = _MealCardEntity;
}
