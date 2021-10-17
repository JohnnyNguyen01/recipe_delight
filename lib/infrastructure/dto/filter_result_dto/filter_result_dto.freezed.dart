// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterResultDto _$FilterResultDtoFromJson(Map<String, dynamic> json) {
  return _FilterResultDto.fromJson(json);
}

/// @nodoc
class _$FilterResultDtoTearOff {
  const _$FilterResultDtoTearOff();

  _FilterResultDto call(
      {String idMeal = '', String strMealThumb = '', String strMeal = ''}) {
    return _FilterResultDto(
      idMeal: idMeal,
      strMealThumb: strMealThumb,
      strMeal: strMeal,
    );
  }

  FilterResultDto fromJson(Map<String, Object> json) {
    return FilterResultDto.fromJson(json);
  }
}

/// @nodoc
const $FilterResultDto = _$FilterResultDtoTearOff();

/// @nodoc
mixin _$FilterResultDto {
  String get idMeal => throw _privateConstructorUsedError;
  String get strMealThumb => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterResultDtoCopyWith<FilterResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterResultDtoCopyWith<$Res> {
  factory $FilterResultDtoCopyWith(
          FilterResultDto value, $Res Function(FilterResultDto) then) =
      _$FilterResultDtoCopyWithImpl<$Res>;
  $Res call({String idMeal, String strMealThumb, String strMeal});
}

/// @nodoc
class _$FilterResultDtoCopyWithImpl<$Res>
    implements $FilterResultDtoCopyWith<$Res> {
  _$FilterResultDtoCopyWithImpl(this._value, this._then);

  final FilterResultDto _value;
  // ignore: unused_field
  final $Res Function(FilterResultDto) _then;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FilterResultDtoCopyWith<$Res>
    implements $FilterResultDtoCopyWith<$Res> {
  factory _$FilterResultDtoCopyWith(
          _FilterResultDto value, $Res Function(_FilterResultDto) then) =
      __$FilterResultDtoCopyWithImpl<$Res>;
  @override
  $Res call({String idMeal, String strMealThumb, String strMeal});
}

/// @nodoc
class __$FilterResultDtoCopyWithImpl<$Res>
    extends _$FilterResultDtoCopyWithImpl<$Res>
    implements _$FilterResultDtoCopyWith<$Res> {
  __$FilterResultDtoCopyWithImpl(
      _FilterResultDto _value, $Res Function(_FilterResultDto) _then)
      : super(_value, (v) => _then(v as _FilterResultDto));

  @override
  _FilterResultDto get _value => super._value as _FilterResultDto;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strMeal = freezed,
  }) {
    return _then(_FilterResultDto(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterResultDto extends _FilterResultDto {
  const _$_FilterResultDto(
      {this.idMeal = '', this.strMealThumb = '', this.strMeal = ''})
      : super._();

  factory _$_FilterResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_FilterResultDtoFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String idMeal;
  @JsonKey(defaultValue: '')
  @override
  final String strMealThumb;
  @JsonKey(defaultValue: '')
  @override
  final String strMeal;

  @override
  String toString() {
    return 'FilterResultDto(idMeal: $idMeal, strMealThumb: $strMealThumb, strMeal: $strMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterResultDto &&
            (identical(other.idMeal, idMeal) ||
                const DeepCollectionEquality().equals(other.idMeal, idMeal)) &&
            (identical(other.strMealThumb, strMealThumb) ||
                const DeepCollectionEquality()
                    .equals(other.strMealThumb, strMealThumb)) &&
            (identical(other.strMeal, strMeal) ||
                const DeepCollectionEquality().equals(other.strMeal, strMeal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(idMeal) ^
      const DeepCollectionEquality().hash(strMealThumb) ^
      const DeepCollectionEquality().hash(strMeal);

  @JsonKey(ignore: true)
  @override
  _$FilterResultDtoCopyWith<_FilterResultDto> get copyWith =>
      __$FilterResultDtoCopyWithImpl<_FilterResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterResultDtoToJson(this);
  }
}

abstract class _FilterResultDto extends FilterResultDto {
  const factory _FilterResultDto(
      {String idMeal,
      String strMealThumb,
      String strMeal}) = _$_FilterResultDto;
  const _FilterResultDto._() : super._();

  factory _FilterResultDto.fromJson(Map<String, dynamic> json) =
      _$_FilterResultDto.fromJson;

  @override
  String get idMeal => throw _privateConstructorUsedError;
  @override
  String get strMealThumb => throw _privateConstructorUsedError;
  @override
  String get strMeal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterResultDtoCopyWith<_FilterResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
