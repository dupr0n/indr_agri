import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';
import 'parameters.dart';

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

//* Aimed to persist
class Parameters extends ValueObject<Map<String, double>> {
  @override
  final Either<ValueFailure<Map<String, double>>, Map<String, double>> value;

  static const Map<String, List<double>> limitValues = paramLimits;

  factory Parameters(Map<String, double> input) {
    assert(input != null);
    return Parameters._(validateLimitValues(input, limitValues));
  }

  const Parameters._(this.value);
}
