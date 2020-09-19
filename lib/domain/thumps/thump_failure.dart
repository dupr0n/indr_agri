import 'package:freezed_annotation/freezed_annotation.dart';

part 'thump_failure.freezed.dart';

@freezed
abstract class ThumpFailure with _$ThumpFailure {
  const factory ThumpFailure.unexpected() = Unexpected;
  const factory ThumpFailure.insufficientPermission() = _InsufficientPermission;
  const factory ThumpFailure.unableToUpdate() = _UnableToUpdate;
}
