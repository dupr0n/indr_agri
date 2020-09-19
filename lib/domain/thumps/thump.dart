import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/failures.dart';

import '../core/value_object.dart';
import 'value_objects.dart';

part 'thump.freezed.dart';

@freezed
abstract class Thump implements _$Thump {
  const Thump._();

  const factory Thump({
    @required UniqueId id,
    @required ObjTemp objTemp,
    @required AirTemp airTemp,
    @required AirHumidity airHumidity,
    @required bool priority,
  }) = _Thump;

  factory Thump.empty() => Thump(
        id: UniqueId(),
        objTemp: ObjTemp(-273),
        airTemp: AirTemp(-273),
        airHumidity: AirHumidity(-1),
        priority: false,
      );

  Option<ValueFailure<dynamic>> get failureOption => objTemp.failureOrUnit
      .andThen(airTemp.failureOrUnit)
      .andThen(airHumidity.failureOrUnit)
      .fold((f) => some(f), (_) => none());
}
