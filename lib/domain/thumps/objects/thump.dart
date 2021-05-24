import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../value_objects.dart';

part 'thump.freezed.dart';

@freezed
class AirTempObj with _$AirTempObj {
  const AirTempObj._();

  const factory AirTempObj({
    @required UniqueId? id,
    @required AirTemp? value,
    @required DateTime? time,
  }) = _AirTempObj;

  Option<ValueFailure<dynamic>> get failureOption => (value ?? AirTemp(-100)).failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}

@freezed
class HumidityObj with _$HumidityObj {
  const HumidityObj._();

  const factory HumidityObj({
    @required UniqueId? id,
    @required Humidity? value,
    @required DateTime? time,
  }) = _HumidityObj;

  Option<ValueFailure<dynamic>> get failureOption => (value ?? Humidity(-1)).failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}

@freezed
class IntensityObj with _$IntensityObj {
  const IntensityObj._();

  const factory IntensityObj({
    @required UniqueId? id,
    @required Intensity? value,
    @required DateTime? time,
  }) = _IntensityObj;

  Option<ValueFailure<dynamic>> get failureOption => (value ?? Intensity(-1)).failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}

@freezed
class ObjTempObj with _$ObjTempObj {
  const ObjTempObj._();

  const factory ObjTempObj({
    @required UniqueId? id,
    @required ObjTemp? value,
    @required DateTime? time,
  }) = _ObjTempObj;

  Option<ValueFailure<dynamic>> get failureOption => (value ?? ObjTemp(300)).failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}

@freezed
class PhLevelObj with _$PhLevelObj {
  const PhLevelObj._();

  const factory PhLevelObj({
    @required UniqueId? id,
    @required PhLevel? value,
    @required DateTime? time,
  }) = _PhLevelObj;

  Option<ValueFailure<dynamic>> get failureOption => (value ?? PhLevel(-1)).failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}
