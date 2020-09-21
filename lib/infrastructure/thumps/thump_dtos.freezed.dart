// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thump_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ThumpDTO _$ThumpDTOFromJson(Map<String, dynamic> json) {
  return _ThumpDTO.fromJson(json);
}

class _$ThumpDTOTearOff {
  const _$ThumpDTOTearOff();

// ignore: unused_element
  _ThumpDTO call(
      {String id,
      @required String title,
      @required double objTemp,
      @required double airTemp,
      @required double airHumidity,
      @required bool priority}) {
    return _ThumpDTO(
      id: id,
      title: title,
      objTemp: objTemp,
      airTemp: airTemp,
      airHumidity: airHumidity,
      priority: priority,
    );
  }
}

// ignore: unused_element
const $ThumpDTO = _$ThumpDTOTearOff();

mixin _$ThumpDTO {
  String get id;
  String get title;
  double get objTemp;
  double get airTemp;
  double get airHumidity;
  bool get priority;

  Map<String, dynamic> toJson();
  $ThumpDTOCopyWith<ThumpDTO> get copyWith;
}

abstract class $ThumpDTOCopyWith<$Res> {
  factory $ThumpDTOCopyWith(ThumpDTO value, $Res Function(ThumpDTO) then) =
      _$ThumpDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      double objTemp,
      double airTemp,
      double airHumidity,
      bool priority});
}

class _$ThumpDTOCopyWithImpl<$Res> implements $ThumpDTOCopyWith<$Res> {
  _$ThumpDTOCopyWithImpl(this._value, this._then);

  final ThumpDTO _value;
  // ignore: unused_field
  final $Res Function(ThumpDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object objTemp = freezed,
    Object airTemp = freezed,
    Object airHumidity = freezed,
    Object priority = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      objTemp: objTemp == freezed ? _value.objTemp : objTemp as double,
      airTemp: airTemp == freezed ? _value.airTemp : airTemp as double,
      airHumidity:
          airHumidity == freezed ? _value.airHumidity : airHumidity as double,
      priority: priority == freezed ? _value.priority : priority as bool,
    ));
  }
}

abstract class _$ThumpDTOCopyWith<$Res> implements $ThumpDTOCopyWith<$Res> {
  factory _$ThumpDTOCopyWith(_ThumpDTO value, $Res Function(_ThumpDTO) then) =
      __$ThumpDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      double objTemp,
      double airTemp,
      double airHumidity,
      bool priority});
}

class __$ThumpDTOCopyWithImpl<$Res> extends _$ThumpDTOCopyWithImpl<$Res>
    implements _$ThumpDTOCopyWith<$Res> {
  __$ThumpDTOCopyWithImpl(_ThumpDTO _value, $Res Function(_ThumpDTO) _then)
      : super(_value, (v) => _then(v as _ThumpDTO));

  @override
  _ThumpDTO get _value => super._value as _ThumpDTO;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object objTemp = freezed,
    Object airTemp = freezed,
    Object airHumidity = freezed,
    Object priority = freezed,
  }) {
    return _then(_ThumpDTO(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      objTemp: objTemp == freezed ? _value.objTemp : objTemp as double,
      airTemp: airTemp == freezed ? _value.airTemp : airTemp as double,
      airHumidity:
          airHumidity == freezed ? _value.airHumidity : airHumidity as double,
      priority: priority == freezed ? _value.priority : priority as bool,
    ));
  }
}

@JsonSerializable()
class _$_ThumpDTO extends _ThumpDTO {
  const _$_ThumpDTO(
      {this.id,
      @required this.title,
      @required this.objTemp,
      @required this.airTemp,
      @required this.airHumidity,
      @required this.priority})
      : assert(title != null),
        assert(objTemp != null),
        assert(airTemp != null),
        assert(airHumidity != null),
        assert(priority != null),
        super._();

  factory _$_ThumpDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ThumpDTOFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final double objTemp;
  @override
  final double airTemp;
  @override
  final double airHumidity;
  @override
  final bool priority;

  @override
  String toString() {
    return 'ThumpDTO(id: $id, title: $title, objTemp: $objTemp, airTemp: $airTemp, airHumidity: $airHumidity, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThumpDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.objTemp, objTemp) ||
                const DeepCollectionEquality()
                    .equals(other.objTemp, objTemp)) &&
            (identical(other.airTemp, airTemp) ||
                const DeepCollectionEquality()
                    .equals(other.airTemp, airTemp)) &&
            (identical(other.airHumidity, airHumidity) ||
                const DeepCollectionEquality()
                    .equals(other.airHumidity, airHumidity)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(objTemp) ^
      const DeepCollectionEquality().hash(airTemp) ^
      const DeepCollectionEquality().hash(airHumidity) ^
      const DeepCollectionEquality().hash(priority);

  @override
  _$ThumpDTOCopyWith<_ThumpDTO> get copyWith =>
      __$ThumpDTOCopyWithImpl<_ThumpDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThumpDTOToJson(this);
  }
}

abstract class _ThumpDTO extends ThumpDTO {
  const _ThumpDTO._() : super._();
  const factory _ThumpDTO(
      {String id,
      @required String title,
      @required double objTemp,
      @required double airTemp,
      @required double airHumidity,
      @required bool priority}) = _$_ThumpDTO;

  factory _ThumpDTO.fromJson(Map<String, dynamic> json) = _$_ThumpDTO.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  double get objTemp;
  @override
  double get airTemp;
  @override
  double get airHumidity;
  @override
  bool get priority;
  @override
  _$ThumpDTOCopyWith<_ThumpDTO> get copyWith;
}
