// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealEntity _$MealEntityFromJson(Map<String, dynamic> json) {
  return _MealEntity.fromJson(json);
}

/// @nodoc
class _$MealEntityTearOff {
  const _$MealEntityTearOff();

  _MealEntity call(
      {String name = '',
      String imageUrl = '',
      String thumbnailUrl = '',
      String videoUrl = '',
      List<String> categories = const <String>[],
      String region = '',
      List<String> instructions = const <String>[],
      List<IngredientDetail> ingredientDetails = const <IngredientDetail>[]}) {
    return _MealEntity(
      name: name,
      imageUrl: imageUrl,
      thumbnailUrl: thumbnailUrl,
      videoUrl: videoUrl,
      categories: categories,
      region: region,
      instructions: instructions,
      ingredientDetails: ingredientDetails,
    );
  }

  MealEntity fromJson(Map<String, Object> json) {
    return MealEntity.fromJson(json);
  }
}

/// @nodoc
const $MealEntity = _$MealEntityTearOff();

/// @nodoc
mixin _$MealEntity {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;
  List<IngredientDetail> get ingredientDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealEntityCopyWith<MealEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealEntityCopyWith<$Res> {
  factory $MealEntityCopyWith(
          MealEntity value, $Res Function(MealEntity) then) =
      _$MealEntityCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String imageUrl,
      String thumbnailUrl,
      String videoUrl,
      List<String> categories,
      String region,
      List<String> instructions,
      List<IngredientDetail> ingredientDetails});
}

/// @nodoc
class _$MealEntityCopyWithImpl<$Res> implements $MealEntityCopyWith<$Res> {
  _$MealEntityCopyWithImpl(this._value, this._then);

  final MealEntity _value;
  // ignore: unused_field
  final $Res Function(MealEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoUrl = freezed,
    Object? categories = freezed,
    Object? region = freezed,
    Object? instructions = freezed,
    Object? ingredientDetails = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredientDetails: ingredientDetails == freezed
          ? _value.ingredientDetails
          : ingredientDetails // ignore: cast_nullable_to_non_nullable
              as List<IngredientDetail>,
    ));
  }
}

/// @nodoc
abstract class _$MealEntityCopyWith<$Res> implements $MealEntityCopyWith<$Res> {
  factory _$MealEntityCopyWith(
          _MealEntity value, $Res Function(_MealEntity) then) =
      __$MealEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String imageUrl,
      String thumbnailUrl,
      String videoUrl,
      List<String> categories,
      String region,
      List<String> instructions,
      List<IngredientDetail> ingredientDetails});
}

/// @nodoc
class __$MealEntityCopyWithImpl<$Res> extends _$MealEntityCopyWithImpl<$Res>
    implements _$MealEntityCopyWith<$Res> {
  __$MealEntityCopyWithImpl(
      _MealEntity _value, $Res Function(_MealEntity) _then)
      : super(_value, (v) => _then(v as _MealEntity));

  @override
  _MealEntity get _value => super._value as _MealEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoUrl = freezed,
    Object? categories = freezed,
    Object? region = freezed,
    Object? instructions = freezed,
    Object? ingredientDetails = freezed,
  }) {
    return _then(_MealEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredientDetails: ingredientDetails == freezed
          ? _value.ingredientDetails
          : ingredientDetails // ignore: cast_nullable_to_non_nullable
              as List<IngredientDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealEntity extends _MealEntity {
  const _$_MealEntity(
      {this.name = '',
      this.imageUrl = '',
      this.thumbnailUrl = '',
      this.videoUrl = '',
      this.categories = const <String>[],
      this.region = '',
      this.instructions = const <String>[],
      this.ingredientDetails = const <IngredientDetail>[]})
      : super._();

  factory _$_MealEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MealEntityFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String imageUrl;
  @JsonKey(defaultValue: '')
  @override
  final String thumbnailUrl;
  @JsonKey(defaultValue: '')
  @override
  final String videoUrl;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> categories;
  @JsonKey(defaultValue: '')
  @override
  final String region;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> instructions;
  @JsonKey(defaultValue: const <IngredientDetail>[])
  @override
  final List<IngredientDetail> ingredientDetails;

  @override
  String toString() {
    return 'MealEntity(name: $name, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, videoUrl: $videoUrl, categories: $categories, region: $region, instructions: $instructions, ingredientDetails: $ingredientDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MealEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.ingredientDetails, ingredientDetails) ||
                const DeepCollectionEquality()
                    .equals(other.ingredientDetails, ingredientDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(ingredientDetails);

  @JsonKey(ignore: true)
  @override
  _$MealEntityCopyWith<_MealEntity> get copyWith =>
      __$MealEntityCopyWithImpl<_MealEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealEntityToJson(this);
  }
}

abstract class _MealEntity extends MealEntity {
  const factory _MealEntity(
      {String name,
      String imageUrl,
      String thumbnailUrl,
      String videoUrl,
      List<String> categories,
      String region,
      List<String> instructions,
      List<IngredientDetail> ingredientDetails}) = _$_MealEntity;
  const _MealEntity._() : super._();

  factory _MealEntity.fromJson(Map<String, dynamic> json) =
      _$_MealEntity.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  String get videoUrl => throw _privateConstructorUsedError;
  @override
  List<String> get categories => throw _privateConstructorUsedError;
  @override
  String get region => throw _privateConstructorUsedError;
  @override
  List<String> get instructions => throw _privateConstructorUsedError;
  @override
  List<IngredientDetail> get ingredientDetails =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealEntityCopyWith<_MealEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
