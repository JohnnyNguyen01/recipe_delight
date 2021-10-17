import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_result_dto.freezed.dart';
part 'filter_result_dto.g.dart';

@freezed
class FilterResultDto with _$FilterResultDto {
  const factory FilterResultDto({
    @Default('') String idMeal,
    @Default('') String strMealThumb,
    @Default('') String strMeal,
  }) = _FilterResultDto;

  const FilterResultDto._();

  factory FilterResultDto.fromJson(Map<String, dynamic> json) =>
      _$FilterResultDtoFromJson(json);
}
