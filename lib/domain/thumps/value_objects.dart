import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';

class AirTemp extends ValueObject {
  factory AirTemp(double input) {
    return AirTemp._(validateLimit(input, min: -89.2, max: 56.7));
  }

  @override
  final Either<ValueFailure, dynamic> value;
  const AirTemp._(this.value);
}

class Humidity extends ValueObject {
  factory Humidity(double input) {
    return Humidity._(validateLimit(input, min: 0, max: 100));
  }

  @override
  final Either<ValueFailure, dynamic> value;
  const Humidity._(this.value);
}

class Intensity extends ValueObject {
  factory Intensity(double input) {
    return Intensity._(validateLimit(input, min: 0, max: 90000));
  }

  @override
  final Either<ValueFailure, dynamic> value;
  const Intensity._(this.value);
}

class ObjTemp extends ValueObject {
  factory ObjTemp(double input) {
    return ObjTemp._(validateLimit(input, min: -273.15, max: 200));
  }

  @override
  final Either<ValueFailure, dynamic> value;
  const ObjTemp._(this.value);
}

class PhLevel extends ValueObject {
  factory PhLevel(double input) {
    return PhLevel._(validateLimit(input, min: 0, max: 14));
  }

  @override
  final Either<ValueFailure, dynamic> value;
  const PhLevel._(this.value);
}
