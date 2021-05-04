// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thump_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AirTempDTO _$_$_AirTempDTOFromJson(Map<String, dynamic> json) {
  return _$_AirTempDTO(
    id: json['id'] as String?,
    value: (json['value'] as num?)?.toDouble(),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_AirTempDTOToJson(_$_AirTempDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'dateTime': instance.dateTime?.toIso8601String(),
    };

_$_HumidityDTO _$_$_HumidityDTOFromJson(Map<String, dynamic> json) {
  return _$_HumidityDTO(
    id: json['id'] as String?,
    value: (json['value'] as num?)?.toDouble(),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_HumidityDTOToJson(_$_HumidityDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'dateTime': instance.dateTime?.toIso8601String(),
    };

_$_IntensityDTO _$_$_IntensityDTOFromJson(Map<String, dynamic> json) {
  return _$_IntensityDTO(
    id: json['id'] as String?,
    value: (json['value'] as num?)?.toDouble(),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_IntensityDTOToJson(_$_IntensityDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'dateTime': instance.dateTime?.toIso8601String(),
    };

_$_ObjTempDTO _$_$_ObjTempDTOFromJson(Map<String, dynamic> json) {
  return _$_ObjTempDTO(
    id: json['id'] as String?,
    value: (json['value'] as num?)?.toDouble(),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_ObjTempDTOToJson(_$_ObjTempDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'dateTime': instance.dateTime?.toIso8601String(),
    };

_$_PhLevelDTO _$_$_PhLevelDTOFromJson(Map<String, dynamic> json) {
  return _$_PhLevelDTO(
    id: json['id'] as String?,
    value: (json['value'] as num?)?.toDouble(),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_PhLevelDTOToJson(_$_PhLevelDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'dateTime': instance.dateTime?.toIso8601String(),
    };
