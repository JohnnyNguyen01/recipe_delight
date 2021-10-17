import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_detail.freezed.dart';
part 'ingredient_detail.g.dart';

@freezed
class IngredientDetail with _$IngredientDetail {
  const factory IngredientDetail({
    String? name,
    String? thumbnailUrl,
    String? measurement,
  }) = _IngredientDetail;

  const IngredientDetail._();

  factory IngredientDetail.fromJson(Map<String, dynamic> json) =>
      _$IngredientDetailFromJson(json);
}
