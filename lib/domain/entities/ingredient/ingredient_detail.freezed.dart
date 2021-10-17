// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientDetail _$IngredientDetailFromJson(Map<String, dynamic> json) {
  return _IngredientDetail.fromJson(json);
}

/// @nodoc
class _$IngredientDetailTearOff {
  const _$IngredientDetailTearOff();

  _IngredientDetail call(
      {String? name, String? thumbnailUrl, String? measurement}) {
    return _IngredientDetail(
      name: name,
      thumbnailUrl: thumbnailUrl,
      measurement: measurement,
    );
  }

  IngredientDetail fromJson(Map<String, Object> json) {
    return IngredientDetail.fromJson(json);
  }
}

/// @nodoc
const $IngredientDetail = _$IngredientDetailTearOff();

/// @nodoc
mixin _$IngredientDetail {
  String? get name => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get measurement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientDetailCopyWith<IngredientDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientDetailCopyWith<$Res> {
  factory $IngredientDetailCopyWith(
          IngredientDetail value, $Res Function(IngredientDetail) then) =
      _$IngredientDetailCopyWithImpl<$Res>;
  $Res call({String? name, String? thumbnailUrl, String? measurement});
}

/// @nodoc
class _$IngredientDetailCopyWithImpl<$Res>
    implements $IngredientDetailCopyWith<$Res> {
  _$IngredientDetailCopyWithImpl(this._value, this._then);

  final IngredientDetail _value;
  // ignore: unused_field
  final $Res Function(IngredientDetail) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
    Object? measurement = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      measurement: measurement == freezed
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$IngredientDetailCopyWith<$Res>
    implements $IngredientDetailCopyWith<$Res> {
  factory _$IngredientDetailCopyWith(
          _IngredientDetail value, $Res Function(_IngredientDetail) then) =
      __$IngredientDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? thumbnailUrl, String? measurement});
}

/// @nodoc
class __$IngredientDetailCopyWithImpl<$Res>
    extends _$IngredientDetailCopyWithImpl<$Res>
    implements _$IngredientDetailCopyWith<$Res> {
  __$IngredientDetailCopyWithImpl(
      _IngredientDetail _value, $Res Function(_IngredientDetail) _then)
      : super(_value, (v) => _then(v as _IngredientDetail));

  @override
  _IngredientDetail get _value => super._value as _IngredientDetail;

  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
    Object? measurement = freezed,
  }) {
    return _then(_IngredientDetail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      measurement: measurement == freezed
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientDetail extends _IngredientDetail {
  const _$_IngredientDetail({this.name, this.thumbnailUrl, this.measurement})
      : super._();

  factory _$_IngredientDetail.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientDetailFromJson(json);

  @override
  final String? name;
  @override
  final String? thumbnailUrl;
  @override
  final String? measurement;

  @override
  String toString() {
    return 'IngredientDetail(name: $name, thumbnailUrl: $thumbnailUrl, measurement: $measurement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IngredientDetail &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.measurement, measurement) ||
                const DeepCollectionEquality()
                    .equals(other.measurement, measurement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(measurement);

  @JsonKey(ignore: true)
  @override
  _$IngredientDetailCopyWith<_IngredientDetail> get copyWith =>
      __$IngredientDetailCopyWithImpl<_IngredientDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientDetailToJson(this);
  }
}

abstract class _IngredientDetail extends IngredientDetail {
  const factory _IngredientDetail(
      {String? name,
      String? thumbnailUrl,
      String? measurement}) = _$_IngredientDetail;
  const _IngredientDetail._() : super._();

  factory _IngredientDetail.fromJson(Map<String, dynamic> json) =
      _$_IngredientDetail.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  String? get measurement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IngredientDetailCopyWith<_IngredientDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
