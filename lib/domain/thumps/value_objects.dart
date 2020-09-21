import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';

class ThumpTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory ThumpTitle(String input) {
    assert(input != null);
    return ThumpTitle._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }

  const ThumpTitle._(this.value);
}

class ObjTemp extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const double maxTemp = 200; //* Maximum measurable temp

  factory ObjTemp(double input) {
    assert(input != null);
    return ObjTemp._(validateMaxValue(input, maxTemp));
  }

  const ObjTemp._(this.value);
}

class AirTemp extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const double maxTemp = 200;

  factory AirTemp(double input) {
    assert(input != null);
    return AirTemp._(validateMaxValue(input, maxTemp));
  }

  const AirTemp._(this.value);
}

class AirHumidity extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const double maxHumidity = 20;

  factory AirHumidity(double input) {
    assert(input != null);
    return AirHumidity._(validateMaxValue(input, maxHumidity));
  }

  const AirHumidity._(this.value);
}
