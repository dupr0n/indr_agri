import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_object.dart';
import '../../domain/thumps/objects/thump.dart';
import '../../domain/thumps/value_objects.dart';

part 'thump_dto.freezed.dart';
part 'thump_dto.g.dart';

const _fallback = {'Error': 'Failed to retrieve doc.data()'};

@freezed
abstract class AirTempDTO with _$AirTempDTO {
  const AirTempDTO._();

  const factory AirTempDTO({
    @required String? id,
    @required double? value,
    @required DateTime? dateTime,
  }) = _AirTempDTO;

  factory AirTempDTO.fromJson(Map<String, dynamic> json) => _$AirTempDTOFromJson(json);

  factory AirTempDTO.fromFirestore(DocumentSnapshot doc) {
    if (doc.data() == null) print('Error: Failed to retrieve doc.data()');
    return AirTempDTO.fromJson(doc.data() ?? _fallback).copyWith(id: doc.id);
  }

  AirTempObj toDomain() => AirTempObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Air Temp ID'),
        value: AirTemp(value ?? -100),
        dateTime: dateTime,
      );
}

@freezed
abstract class HumidityDTO with _$HumidityDTO {
  const HumidityDTO._();

  const factory HumidityDTO({
    @required String? id,
    @required double? value,
    @required DateTime? dateTime,
  }) = _HumidityDTO;

  factory HumidityDTO.fromJson(Map<String, dynamic> json) => _$HumidityDTOFromJson(json);

  factory HumidityDTO.fromFirestore(DocumentSnapshot doc) {
    if (doc.data() == null) print('Error: Failed to retrieve doc.data()');
    return HumidityDTO.fromJson(doc.data() ?? _fallback).copyWith(id: doc.id);
  }

  HumidityObj toDomain() => HumidityObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Humidity ID'),
        value: Humidity(value ?? -1),
        dateTime: dateTime,
      );
}

@freezed
abstract class IntensityDTO with _$IntensityDTO {
  const IntensityDTO._();

  const factory IntensityDTO({
    @required String? id,
    @required double? value,
    @required DateTime? dateTime,
  }) = _IntensityDTO;

  factory IntensityDTO.fromJson(Map<String, dynamic> json) => _$IntensityDTOFromJson(json);

  factory IntensityDTO.fromFirestore(DocumentSnapshot doc) {
    if (doc.data() == null) print('Error: Failed to retrieve doc.data()');
    return IntensityDTO.fromJson(doc.data() ?? _fallback).copyWith(id: doc.id);
  }

  IntensityObj toDomain() => IntensityObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Intensity ID'),
        value: Intensity(value ?? -1),
        dateTime: dateTime,
      );
}

@freezed
abstract class ObjTempDTO with _$ObjTempDTO {
  const ObjTempDTO._();

  const factory ObjTempDTO({
    @required String? id,
    @required double? value,
    @required DateTime? dateTime,
  }) = _ObjTempDTO;

  factory ObjTempDTO.fromJson(Map<String, dynamic> json) => _$ObjTempDTOFromJson(json);

  factory ObjTempDTO.fromFirestore(DocumentSnapshot doc) {
    if (doc.data() == null) print('Error: Failed to retrieve doc.data()');
    return ObjTempDTO.fromJson(doc.data() ?? _fallback).copyWith(id: doc.id);
  }

  ObjTempObj toDomain() => ObjTempObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Obj Temp ID'),
        value: ObjTemp(value ?? 300),
        dateTime: dateTime,
      );
}

@freezed
abstract class PhLevelDTO with _$PhLevelDTO {
  const PhLevelDTO._();

  const factory PhLevelDTO({
    @required String? id,
    @required double? value,
    @required DateTime? dateTime,
  }) = _PhLevelDTO;

  factory PhLevelDTO.fromJson(Map<String, dynamic> json) => _$PhLevelDTOFromJson(json);

  factory PhLevelDTO.fromFirestore(DocumentSnapshot doc) {
    if (doc.data() == null) print('Error: Failed to retrieve doc.data()');
    return PhLevelDTO.fromJson(doc.data() ?? _fallback).copyWith(id: doc.id);
  }

  PhLevelObj toDomain() => PhLevelObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy pH Level ID'),
        value: PhLevel(value ?? -1),
        dateTime: dateTime,
      );
}
