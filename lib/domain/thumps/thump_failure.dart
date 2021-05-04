import 'package:freezed_annotation/freezed_annotation.dart';

part 'thump_failure.freezed.dart';

@freezed
abstract class ThumpFailure with _$ThumpFailure {
  const factory ThumpFailure.unexpected() = _Unexpected;
  const factory ThumpFailure.insufficientPermission() = _InsufficientPermission;
}
