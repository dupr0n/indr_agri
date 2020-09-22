// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thump_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThumpDTO _$_$_ThumpDTOFromJson(Map<String, dynamic> json) {
  return _$_ThumpDTO(
    id: json['id'] as String,
    objTemp: (json['objTemp'] as num)?.toDouble(),
    airTemp: (json['airTemp'] as num)?.toDouble(),
    airHumidity: (json['airHumidity'] as num)?.toDouble(),
    params: (json['params'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
    priority: json['priority'] as bool,
  );
}

Map<String, dynamic> _$_$_ThumpDTOToJson(_$_ThumpDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objTemp': instance.objTemp,
      'airTemp': instance.airTemp,
      'airHumidity': instance.airHumidity,
      'params': instance.params,
      'priority': instance.priority,
    };
