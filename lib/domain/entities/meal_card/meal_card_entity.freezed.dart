// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_card_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MealCardEntityTearOff {
  const _$MealCardEntityTearOff();

  _MealCardEntity call(
      {String title = '',
      String category = '',
      String subtitle = '',
      bool isFavourited = false,
      String imageUrl = ''}) {
    return _MealCardEntity(
      title: title,
      category: category,
      subtitle: subtitle,
      isFavourited: isFavourited,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $MealCardEntity = _$MealCardEntityTearOff();

/// @nodoc
mixin _$MealCardEntity {
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  bool get isFavourited => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealCardEntityCopyWith<MealCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCardEntityCopyWith<$Res> {
  factory $MealCardEntityCopyWith(
          MealCardEntity value, $Res Function(MealCardEntity) then) =
      _$MealCardEntityCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String category,
      String subtitle,
      bool isFavourited,
      String imageUrl});
}

/// @nodoc
class _$MealCardEntityCopyWithImpl<$Res>
    implements $MealCardEntityCopyWith<$Res> {
  _$MealCardEntityCopyWithImpl(this._value, this._then);

  final MealCardEntity _value;
  // ignore: unused_field
  final $Res Function(MealCardEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? subtitle = freezed,
    Object? isFavourited = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourited: isFavourited == freezed
          ? _value.isFavourited
          : isFavourited // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MealCardEntityCopyWith<$Res>
    implements $MealCardEntityCopyWith<$Res> {
  factory _$MealCardEntityCopyWith(
          _MealCardEntity value, $Res Function(_MealCardEntity) then) =
      __$MealCardEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String category,
      String subtitle,
      bool isFavourited,
      String imageUrl});
}

/// @nodoc
class __$MealCardEntityCopyWithImpl<$Res>
    extends _$MealCardEntityCopyWithImpl<$Res>
    implements _$MealCardEntityCopyWith<$Res> {
  __$MealCardEntityCopyWithImpl(
      _MealCardEntity _value, $Res Function(_MealCardEntity) _then)
      : super(_value, (v) => _then(v as _MealCardEntity));

  @override
  _MealCardEntity get _value => super._value as _MealCardEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? subtitle = freezed,
    Object? isFavourited = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_MealCardEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourited: isFavourited == freezed
          ? _value.isFavourited
          : isFavourited // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MealCardEntity implements _MealCardEntity {
  const _$_MealCardEntity(
      {this.title = '',
      this.category = '',
      this.subtitle = '',
      this.isFavourited = false,
      this.imageUrl = ''});

  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String category;
  @JsonKey(defaultValue: '')
  @override
  final String subtitle;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavourited;
  @JsonKey(defaultValue: '')
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'MealCardEntity(title: $title, category: $category, subtitle: $subtitle, isFavourited: $isFavourited, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MealCardEntity &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.isFavourited, isFavourited) ||
                const DeepCollectionEquality()
                    .equals(other.isFavourited, isFavourited)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(isFavourited) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$MealCardEntityCopyWith<_MealCardEntity> get copyWith =>
      __$MealCardEntityCopyWithImpl<_MealCardEntity>(this, _$identity);
}

abstract class _MealCardEntity implements MealCardEntity {
  const factory _MealCardEntity(
      {String title,
      String category,
      String subtitle,
      bool isFavourited,
      String imageUrl}) = _$_MealCardEntity;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  bool get isFavourited => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MealCardEntityCopyWith<_MealCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
