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

//* Aimed to be removed
Either<ValueFailure<double>, double> validateMaxValue(
  double input,
  double maxValue,
) {
  if (input <= maxValue) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLimit(failedValue: input, limit: maxValue));
  }
}

Either<ValueFailure<Map<String, double>>, Map<String, double>> validateLimitValues(
  Map<String, double> input,
  Map<String, List<double>> limitValues,
) {
  limitValues.forEach((key, value) {
    if (input.containsKey(key)) {
      if (input[key] < value.first || input[key] > value.last) {
        return left(ValueFailure.exceedingLimit(
            failedValue: input, limit: input[key] < value.first ? value.first : value.last));
      }
    } else {
      return left(ValueFailure.empty(failedValue: input));
    }
  });
  return right(input);
}
