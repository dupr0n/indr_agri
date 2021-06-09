import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_object.dart';
import '../../domain/thumps/objects/thump.dart';
import '../../domain/thumps/value_objects.dart';

part 'thump_dto.freezed.dart';

const _fallback = {'Error': 'Failed to retrieve doc.data()'};

@freezed
class AirTempDTO with _$AirTempDTO {
  const AirTempDTO._();

  const factory AirTempDTO({
    @required String? id,
    @required double? value,
    @required DateTime? time,
  }) = _AirTempDTO;

  factory AirTempDTO.jsonToDTO(Map<String, dynamic> json) => AirTempDTO(
        id: json['id'] as String?,
        value: (json['value'] as num?)?.toDouble(),
        time: (json['time'] as Timestamp).toDate(),
      );

  factory AirTempDTO.fromFirestore(DocumentSnapshot doc) =>
      AirTempDTO.jsonToDTO(doc.data() ?? _fallback).copyWith(id: doc.id);

  AirTempObj toDomain() => AirTempObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Air Temp ID'),
        value: AirTemp(value ?? -100),
        time: time,
      );
}

@freezed
class HumidityDTO with _$HumidityDTO {
  const HumidityDTO._();

  const factory HumidityDTO({
    @required String? id,
    @required double? value,
    @required DateTime? time,
  }) = _HumidityDTO;

  factory HumidityDTO.jsonToDTO(Map<String, dynamic> json) => HumidityDTO(
        id: json['id'] as String?,
        value: (json['value'] as num?)?.toDouble(),
        time: (json['time'] as Timestamp).toDate(),
      );

  factory HumidityDTO.fromFirestore(DocumentSnapshot doc) =>
      HumidityDTO.jsonToDTO(doc.data() ?? _fallback).copyWith(id: doc.id);

  HumidityObj toDomain() => HumidityObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Humidity ID'),
        value: Humidity(value ?? -1),
        time: time,
      );
}

@freezed
class IntensityDTO with _$IntensityDTO {
  const IntensityDTO._();

  const factory IntensityDTO({
    @required String? id,
    @required double? value,
    @required DateTime? time,
  }) = _IntensityDTO;

  factory IntensityDTO.jsonToDTO(Map<String, dynamic> json) => IntensityDTO(
        id: json['id'] as String?,
        value: json['value'] is int
            ? (json['value'] as int).toDouble()
            : json['value'] is String
                ? double.parse(json['value'] as String)
                : json['value'] as double,
        time: (json['time'] as Timestamp).toDate(),
      );

  factory IntensityDTO.fromFirestore(DocumentSnapshot doc) =>
      IntensityDTO.jsonToDTO(doc.data() ?? _fallback).copyWith(id: doc.id);

  IntensityObj toDomain() => IntensityObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Intensity ID'),
        value: Intensity(value ?? -1),
        time: time,
      );
}

@freezed
class ObjTempDTO with _$ObjTempDTO {
  const ObjTempDTO._();

  const factory ObjTempDTO({
    @required String? id,
    @required double? value,
    @required DateTime? time,
  }) = _ObjTempDTO;

  factory ObjTempDTO.jsonToDTO(Map<String, dynamic> json) => ObjTempDTO(
        id: json['id'] as String?,
        value: (json['value'] as num?)?.toDouble(),
        time: (json['time'] as Timestamp).toDate(),
      );

  factory ObjTempDTO.fromFirestore(DocumentSnapshot doc) =>
      ObjTempDTO.jsonToDTO(doc.data() ?? _fallback).copyWith(id: doc.id);

  ObjTempObj toDomain() => ObjTempObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy Obj Temp ID'),
        value: ObjTemp(value ?? 300),
        time: time,
      );
}

@freezed
class PhLevelDTO with _$PhLevelDTO {
  const PhLevelDTO._();

  const factory PhLevelDTO({
    @required String? id,
    @required double? value,
    @required DateTime? time,
  }) = _PhLevelDTO;

  factory PhLevelDTO.jsonToDTO(Map<String, dynamic> json) => PhLevelDTO(
        id: json['id'] as String?,
        value: double.parse(json['value'] as String),
        time: (json['time'] as Timestamp).toDate(),
      );

  factory PhLevelDTO.fromFirestore(DocumentSnapshot doc) =>
      PhLevelDTO.jsonToDTO(doc.data() ?? _fallback).copyWith(id: doc.id);

  PhLevelObj toDomain() => PhLevelObj(
        id: UniqueId.fromUniqueString(id ?? 'Dummy pH Level ID'),
        value: PhLevel(value ?? -1),
        time: time,
      );
}
