import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateShortPassword(String input) {
  if (input.length >= 6) {
    return Right(input);
  } else {
    return Left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateLimit(
  double input, {
  double max = double.infinity,
  double min = double.negativeInfinity,
}) {
  if (input > min && input < max) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidValue(failedValue: input));
  }
}
