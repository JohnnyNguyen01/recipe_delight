// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeViewStateTearOff {
  const _$HomeViewStateTearOff();

  _HomeViewState call(
      {bool isLoading = false, MealEntity meal = const MealEntity()}) {
    return _HomeViewState(
      isLoading: isLoading,
      meal: meal,
    );
  }
}

/// @nodoc
const $HomeViewState = _$HomeViewStateTearOff();

/// @nodoc
mixin _$HomeViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  MealEntity get meal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, MealEntity meal});

  $MealEntityCopyWith<$Res> get meal;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  final HomeViewState _value;
  // ignore: unused_field
  final $Res Function(HomeViewState) _then;

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
abstract class _$HomeViewStateCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$HomeViewStateCopyWith(
          _HomeViewState value, $Res Function(_HomeViewState) then) =
      __$HomeViewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, MealEntity meal});

  @override
  $MealEntityCopyWith<$Res> get meal;
}

/// @nodoc
class __$HomeViewStateCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res>
    implements _$HomeViewStateCopyWith<$Res> {
  __$HomeViewStateCopyWithImpl(
      _HomeViewState _value, $Res Function(_HomeViewState) _then)
      : super(_value, (v) => _then(v as _HomeViewState));

  @override
  _HomeViewState get _value => super._value as _HomeViewState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? meal = freezed,
  }) {
    return _then(_HomeViewState(
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

class _$_HomeViewState implements _HomeViewState {
  const _$_HomeViewState(
      {this.isLoading = false, this.meal = const MealEntity()});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const MealEntity())
  @override
  final MealEntity meal;

  @override
  String toString() {
    return 'HomeViewState(isLoading: $isLoading, meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeViewState &&
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
  _$HomeViewStateCopyWith<_HomeViewState> get copyWith =>
      __$HomeViewStateCopyWithImpl<_HomeViewState>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState({bool isLoading, MealEntity meal}) =
      _$_HomeViewState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  MealEntity get meal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeViewStateCopyWith<_HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
