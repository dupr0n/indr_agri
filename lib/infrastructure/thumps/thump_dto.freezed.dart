// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'thump_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AirTempDTO _$AirTempDTOFromJson(Map<String, dynamic> json) {
  return _AirTempDTO.fromJson(json);
}

/// @nodoc
class _$AirTempDTOTearOff {
  const _$AirTempDTOTearOff();

  _AirTempDTO call({String? id, double? value, DateTime? dateTime}) {
    return _AirTempDTO(
      id: id,
      value: value,
      dateTime: dateTime,
    );
  }

  AirTempDTO fromJson(Map<String, Object> json) {
    return AirTempDTO.fromJson(json);
  }
}

/// @nodoc
const $AirTempDTO = _$AirTempDTOTearOff();

/// @nodoc
mixin _$AirTempDTO {
  String? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirTempDTOCopyWith<AirTempDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirTempDTOCopyWith<$Res> {
  factory $AirTempDTOCopyWith(
          AirTempDTO value, $Res Function(AirTempDTO) then) =
      _$AirTempDTOCopyWithImpl<$Res>;
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class _$AirTempDTOCopyWithImpl<$Res> implements $AirTempDTOCopyWith<$Res> {
  _$AirTempDTOCopyWithImpl(this._value, this._then);

  final AirTempDTO _value;
  // ignore: unused_field
  final $Res Function(AirTempDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AirTempDTOCopyWith<$Res> implements $AirTempDTOCopyWith<$Res> {
  factory _$AirTempDTOCopyWith(
          _AirTempDTO value, $Res Function(_AirTempDTO) then) =
      __$AirTempDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class __$AirTempDTOCopyWithImpl<$Res> extends _$AirTempDTOCopyWithImpl<$Res>
    implements _$AirTempDTOCopyWith<$Res> {
  __$AirTempDTOCopyWithImpl(
      _AirTempDTO _value, $Res Function(_AirTempDTO) _then)
      : super(_value, (v) => _then(v as _AirTempDTO));

  @override
  _AirTempDTO get _value => super._value as _AirTempDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_AirTempDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AirTempDTO extends _AirTempDTO {
  const _$_AirTempDTO({this.id, this.value, this.dateTime}) : super._();

  factory _$_AirTempDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AirTempDTOFromJson(json);

  @override
  final String? id;
  @override
  final double? value;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'AirTempDTO(id: $id, value: $value, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AirTempDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$AirTempDTOCopyWith<_AirTempDTO> get copyWith =>
      __$AirTempDTOCopyWithImpl<_AirTempDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AirTempDTOToJson(this);
  }
}

abstract class _AirTempDTO extends AirTempDTO {
  const factory _AirTempDTO({String? id, double? value, DateTime? dateTime}) =
      _$_AirTempDTO;
  const _AirTempDTO._() : super._();

  factory _AirTempDTO.fromJson(Map<String, dynamic> json) =
      _$_AirTempDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AirTempDTOCopyWith<_AirTempDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

HumidityDTO _$HumidityDTOFromJson(Map<String, dynamic> json) {
  return _HumidityDTO.fromJson(json);
}

/// @nodoc
class _$HumidityDTOTearOff {
  const _$HumidityDTOTearOff();

  _HumidityDTO call({String? id, double? value, DateTime? dateTime}) {
    return _HumidityDTO(
      id: id,
      value: value,
      dateTime: dateTime,
    );
  }

  HumidityDTO fromJson(Map<String, Object> json) {
    return HumidityDTO.fromJson(json);
  }
}

/// @nodoc
const $HumidityDTO = _$HumidityDTOTearOff();

/// @nodoc
mixin _$HumidityDTO {
  String? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HumidityDTOCopyWith<HumidityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HumidityDTOCopyWith<$Res> {
  factory $HumidityDTOCopyWith(
          HumidityDTO value, $Res Function(HumidityDTO) then) =
      _$HumidityDTOCopyWithImpl<$Res>;
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class _$HumidityDTOCopyWithImpl<$Res> implements $HumidityDTOCopyWith<$Res> {
  _$HumidityDTOCopyWithImpl(this._value, this._then);

  final HumidityDTO _value;
  // ignore: unused_field
  final $Res Function(HumidityDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$HumidityDTOCopyWith<$Res>
    implements $HumidityDTOCopyWith<$Res> {
  factory _$HumidityDTOCopyWith(
          _HumidityDTO value, $Res Function(_HumidityDTO) then) =
      __$HumidityDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class __$HumidityDTOCopyWithImpl<$Res> extends _$HumidityDTOCopyWithImpl<$Res>
    implements _$HumidityDTOCopyWith<$Res> {
  __$HumidityDTOCopyWithImpl(
      _HumidityDTO _value, $Res Function(_HumidityDTO) _then)
      : super(_value, (v) => _then(v as _HumidityDTO));

  @override
  _HumidityDTO get _value => super._value as _HumidityDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_HumidityDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HumidityDTO extends _HumidityDTO {
  const _$_HumidityDTO({this.id, this.value, this.dateTime}) : super._();

  factory _$_HumidityDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_HumidityDTOFromJson(json);

  @override
  final String? id;
  @override
  final double? value;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'HumidityDTO(id: $id, value: $value, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HumidityDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$HumidityDTOCopyWith<_HumidityDTO> get copyWith =>
      __$HumidityDTOCopyWithImpl<_HumidityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HumidityDTOToJson(this);
  }
}

abstract class _HumidityDTO extends HumidityDTO {
  const factory _HumidityDTO({String? id, double? value, DateTime? dateTime}) =
      _$_HumidityDTO;
  const _HumidityDTO._() : super._();

  factory _HumidityDTO.fromJson(Map<String, dynamic> json) =
      _$_HumidityDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HumidityDTOCopyWith<_HumidityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

IntensityDTO _$IntensityDTOFromJson(Map<String, dynamic> json) {
  return _IntensityDTO.fromJson(json);
}

/// @nodoc
class _$IntensityDTOTearOff {
  const _$IntensityDTOTearOff();

  _IntensityDTO call({String? id, double? value, DateTime? dateTime}) {
    return _IntensityDTO(
      id: id,
      value: value,
      dateTime: dateTime,
    );
  }

  IntensityDTO fromJson(Map<String, Object> json) {
    return IntensityDTO.fromJson(json);
  }
}

/// @nodoc
const $IntensityDTO = _$IntensityDTOTearOff();

/// @nodoc
mixin _$IntensityDTO {
  String? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntensityDTOCopyWith<IntensityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntensityDTOCopyWith<$Res> {
  factory $IntensityDTOCopyWith(
          IntensityDTO value, $Res Function(IntensityDTO) then) =
      _$IntensityDTOCopyWithImpl<$Res>;
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class _$IntensityDTOCopyWithImpl<$Res> implements $IntensityDTOCopyWith<$Res> {
  _$IntensityDTOCopyWithImpl(this._value, this._then);

  final IntensityDTO _value;
  // ignore: unused_field
  final $Res Function(IntensityDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$IntensityDTOCopyWith<$Res>
    implements $IntensityDTOCopyWith<$Res> {
  factory _$IntensityDTOCopyWith(
          _IntensityDTO value, $Res Function(_IntensityDTO) then) =
      __$IntensityDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class __$IntensityDTOCopyWithImpl<$Res> extends _$IntensityDTOCopyWithImpl<$Res>
    implements _$IntensityDTOCopyWith<$Res> {
  __$IntensityDTOCopyWithImpl(
      _IntensityDTO _value, $Res Function(_IntensityDTO) _then)
      : super(_value, (v) => _then(v as _IntensityDTO));

  @override
  _IntensityDTO get _value => super._value as _IntensityDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_IntensityDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IntensityDTO extends _IntensityDTO {
  const _$_IntensityDTO({this.id, this.value, this.dateTime}) : super._();

  factory _$_IntensityDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_IntensityDTOFromJson(json);

  @override
  final String? id;
  @override
  final double? value;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'IntensityDTO(id: $id, value: $value, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IntensityDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$IntensityDTOCopyWith<_IntensityDTO> get copyWith =>
      __$IntensityDTOCopyWithImpl<_IntensityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IntensityDTOToJson(this);
  }
}

abstract class _IntensityDTO extends IntensityDTO {
  const factory _IntensityDTO({String? id, double? value, DateTime? dateTime}) =
      _$_IntensityDTO;
  const _IntensityDTO._() : super._();

  factory _IntensityDTO.fromJson(Map<String, dynamic> json) =
      _$_IntensityDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IntensityDTOCopyWith<_IntensityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ObjTempDTO _$ObjTempDTOFromJson(Map<String, dynamic> json) {
  return _ObjTempDTO.fromJson(json);
}

/// @nodoc
class _$ObjTempDTOTearOff {
  const _$ObjTempDTOTearOff();

  _ObjTempDTO call({String? id, double? value, DateTime? dateTime}) {
    return _ObjTempDTO(
      id: id,
      value: value,
      dateTime: dateTime,
    );
  }

  ObjTempDTO fromJson(Map<String, Object> json) {
    return ObjTempDTO.fromJson(json);
  }
}

/// @nodoc
const $ObjTempDTO = _$ObjTempDTOTearOff();

/// @nodoc
mixin _$ObjTempDTO {
  String? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjTempDTOCopyWith<ObjTempDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjTempDTOCopyWith<$Res> {
  factory $ObjTempDTOCopyWith(
          ObjTempDTO value, $Res Function(ObjTempDTO) then) =
      _$ObjTempDTOCopyWithImpl<$Res>;
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class _$ObjTempDTOCopyWithImpl<$Res> implements $ObjTempDTOCopyWith<$Res> {
  _$ObjTempDTOCopyWithImpl(this._value, this._then);

  final ObjTempDTO _value;
  // ignore: unused_field
  final $Res Function(ObjTempDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ObjTempDTOCopyWith<$Res> implements $ObjTempDTOCopyWith<$Res> {
  factory _$ObjTempDTOCopyWith(
          _ObjTempDTO value, $Res Function(_ObjTempDTO) then) =
      __$ObjTempDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class __$ObjTempDTOCopyWithImpl<$Res> extends _$ObjTempDTOCopyWithImpl<$Res>
    implements _$ObjTempDTOCopyWith<$Res> {
  __$ObjTempDTOCopyWithImpl(
      _ObjTempDTO _value, $Res Function(_ObjTempDTO) _then)
      : super(_value, (v) => _then(v as _ObjTempDTO));

  @override
  _ObjTempDTO get _value => super._value as _ObjTempDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_ObjTempDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ObjTempDTO extends _ObjTempDTO {
  const _$_ObjTempDTO({this.id, this.value, this.dateTime}) : super._();

  factory _$_ObjTempDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ObjTempDTOFromJson(json);

  @override
  final String? id;
  @override
  final double? value;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'ObjTempDTO(id: $id, value: $value, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjTempDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$ObjTempDTOCopyWith<_ObjTempDTO> get copyWith =>
      __$ObjTempDTOCopyWithImpl<_ObjTempDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ObjTempDTOToJson(this);
  }
}

abstract class _ObjTempDTO extends ObjTempDTO {
  const factory _ObjTempDTO({String? id, double? value, DateTime? dateTime}) =
      _$_ObjTempDTO;
  const _ObjTempDTO._() : super._();

  factory _ObjTempDTO.fromJson(Map<String, dynamic> json) =
      _$_ObjTempDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObjTempDTOCopyWith<_ObjTempDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PhLevelDTO _$PhLevelDTOFromJson(Map<String, dynamic> json) {
  return _PhLevelDTO.fromJson(json);
}

/// @nodoc
class _$PhLevelDTOTearOff {
  const _$PhLevelDTOTearOff();

  _PhLevelDTO call({String? id, double? value, DateTime? dateTime}) {
    return _PhLevelDTO(
      id: id,
      value: value,
      dateTime: dateTime,
    );
  }

  PhLevelDTO fromJson(Map<String, Object> json) {
    return PhLevelDTO.fromJson(json);
  }
}

/// @nodoc
const $PhLevelDTO = _$PhLevelDTOTearOff();

/// @nodoc
mixin _$PhLevelDTO {
  String? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhLevelDTOCopyWith<PhLevelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhLevelDTOCopyWith<$Res> {
  factory $PhLevelDTOCopyWith(
          PhLevelDTO value, $Res Function(PhLevelDTO) then) =
      _$PhLevelDTOCopyWithImpl<$Res>;
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class _$PhLevelDTOCopyWithImpl<$Res> implements $PhLevelDTOCopyWith<$Res> {
  _$PhLevelDTOCopyWithImpl(this._value, this._then);

  final PhLevelDTO _value;
  // ignore: unused_field
  final $Res Function(PhLevelDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$PhLevelDTOCopyWith<$Res> implements $PhLevelDTOCopyWith<$Res> {
  factory _$PhLevelDTOCopyWith(
          _PhLevelDTO value, $Res Function(_PhLevelDTO) then) =
      __$PhLevelDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? id, double? value, DateTime? dateTime});
}

/// @nodoc
class __$PhLevelDTOCopyWithImpl<$Res> extends _$PhLevelDTOCopyWithImpl<$Res>
    implements _$PhLevelDTOCopyWith<$Res> {
  __$PhLevelDTOCopyWithImpl(
      _PhLevelDTO _value, $Res Function(_PhLevelDTO) _then)
      : super(_value, (v) => _then(v as _PhLevelDTO));

  @override
  _PhLevelDTO get _value => super._value as _PhLevelDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_PhLevelDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PhLevelDTO extends _PhLevelDTO {
  const _$_PhLevelDTO({this.id, this.value, this.dateTime}) : super._();

  factory _$_PhLevelDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PhLevelDTOFromJson(json);

  @override
  final String? id;
  @override
  final double? value;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'PhLevelDTO(id: $id, value: $value, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhLevelDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$PhLevelDTOCopyWith<_PhLevelDTO> get copyWith =>
      __$PhLevelDTOCopyWithImpl<_PhLevelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhLevelDTOToJson(this);
  }
}

abstract class _PhLevelDTO extends PhLevelDTO {
  const factory _PhLevelDTO({String? id, double? value, DateTime? dateTime}) =
      _$_PhLevelDTO;
  const _PhLevelDTO._() : super._();

  factory _PhLevelDTO.fromJson(Map<String, dynamic> json) =
      _$_PhLevelDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhLevelDTOCopyWith<_PhLevelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
