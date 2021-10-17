import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    @Default(400) int code,
    @Default('') String message,
  }) = _Failure;
}
