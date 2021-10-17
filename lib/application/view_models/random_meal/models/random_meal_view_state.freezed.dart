// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'random_meal_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RandomMealViewStateTearOff {
  const _$RandomMealViewStateTearOff();

  _RandomMealViewState call(
      {bool isLoading = false, MealEntity meal = const MealEntity()}) {
    return _RandomMealViewState(
      isLoading: isLoading,
      meal: meal,
    );
  }
}

/// @nodoc
const $RandomMealViewState = _$RandomMealViewStateTearOff();

/// @nodoc
mixin _$RandomMealViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  MealEntity get meal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomMealViewStateCopyWith<RandomMealViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomMealViewStateCopyWith<$Res> {
  factory $RandomMealViewStateCopyWith(
          RandomMealViewState value, $Res Function(RandomMealViewState) then) =
      _$RandomMealViewStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, MealEntity meal});

  $MealEntityCopyWith<$Res> get meal;
}

/// @nodoc
class _$RandomMealViewStateCopyWithImpl<$Res>
    implements $RandomMealViewStateCopyWith<$Res> {
  _$RandomMealViewStateCopyWithImpl(this._value, this._then);

  final RandomMealViewState _value;
  // ignore: unused_field
  final $Res Function(RandomMealViewState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? meal = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealEntity,
    ));
  }

  @override
  $MealEntityCopyWith<$Res> get meal {
    return $MealEntityCopyWith<$Res>(_value.meal, (value) {
      return _then(_value.copyWith(meal: value));
    });
  }
}

/// @nodoc
abstract class _$RandomMealViewStateCopyWith<$Res>
    implements $RandomMealViewStateCopyWith<$Res> {
  factory _$RandomMealViewStateCopyWith(_RandomMealViewState value,
          $Res Function(_RandomMealViewState) then) =
      __$RandomMealViewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, MealEntity meal});

  @override
  $MealEntityCopyWith<$Res> get meal;
}

/// @nodoc
class __$RandomMealViewStateCopyWithImpl<$Res>
    extends _$RandomMealViewStateCopyWithImpl<$Res>
    implements _$RandomMealViewStateCopyWith<$Res> {
  __$RandomMealViewStateCopyWithImpl(
      _RandomMealViewState _value, $Res Function(_RandomMealViewState) _then)
      : super(_value, (v) => _then(v as _RandomMealViewState));

  @override
  _RandomMealViewState get _value => super._value as _RandomMealViewState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? meal = freezed,
  }) {
    return _then(_RandomMealViewState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealEntity,
    ));
  }
}

/// @nodoc

class _$_RandomMealViewState implements _RandomMealViewState {
  const _$_RandomMealViewState(
      {this.isLoading = false, this.meal = const MealEntity()});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const MealEntity())
  @override
  final MealEntity meal;

  @override
  String toString() {
    return 'RandomMealViewState(isLoading: $isLoading, meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RandomMealViewState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.meal, meal) ||
                const DeepCollectionEquality().equals(other.meal, meal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(meal);

  @JsonKey(ignore: true)
  @override
  _$RandomMealViewStateCopyWith<_RandomMealViewState> get copyWith =>
      __$RandomMealViewStateCopyWithImpl<_RandomMealViewState>(
          this, _$identity);
}

abstract class _RandomMealViewState implements RandomMealViewState {
  const factory _RandomMealViewState({bool isLoading, MealEntity meal}) =
      _$_RandomMealViewState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  MealEntity get meal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RandomMealViewStateCopyWith<_RandomMealViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
