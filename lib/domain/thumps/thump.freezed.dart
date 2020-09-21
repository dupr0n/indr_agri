// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thump.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThumpTearOff {
  const _$ThumpTearOff();

// ignore: unused_element
  _Thump call(
      {@required UniqueId id,
      @required ThumpTitle title,
      @required ObjTemp objTemp,
      @required AirTemp airTemp,
      @required AirHumidity airHumidity,
      @required bool priority}) {
    return _Thump(
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
const $Thump = _$ThumpTearOff();

mixin _$Thump {
  UniqueId get id;
  ThumpTitle get title;
  ObjTemp get objTemp;
  AirTemp get airTemp;
  AirHumidity get airHumidity;
  bool get priority;

  $ThumpCopyWith<Thump> get copyWith;
}

abstract class $ThumpCopyWith<$Res> {
  factory $ThumpCopyWith(Thump value, $Res Function(Thump) then) =
      _$ThumpCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ThumpTitle title,
      ObjTemp objTemp,
      AirTemp airTemp,
      AirHumidity airHumidity,
      bool priority});
}

class _$ThumpCopyWithImpl<$Res> implements $ThumpCopyWith<$Res> {
  _$ThumpCopyWithImpl(this._value, this._then);

  final Thump _value;
  // ignore: unused_field
  final $Res Function(Thump) _then;

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
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as ThumpTitle,
      objTemp: objTemp == freezed ? _value.objTemp : objTemp as ObjTemp,
      airTemp: airTemp == freezed ? _value.airTemp : airTemp as AirTemp,
      airHumidity: airHumidity == freezed
          ? _value.airHumidity
          : airHumidity as AirHumidity,
      priority: priority == freezed ? _value.priority : priority as bool,
    ));
  }
}

abstract class _$ThumpCopyWith<$Res> implements $ThumpCopyWith<$Res> {
  factory _$ThumpCopyWith(_Thump value, $Res Function(_Thump) then) =
      __$ThumpCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ThumpTitle title,
      ObjTemp objTemp,
      AirTemp airTemp,
      AirHumidity airHumidity,
      bool priority});
}

class __$ThumpCopyWithImpl<$Res> extends _$ThumpCopyWithImpl<$Res>
    implements _$ThumpCopyWith<$Res> {
  __$ThumpCopyWithImpl(_Thump _value, $Res Function(_Thump) _then)
      : super(_value, (v) => _then(v as _Thump));

  @override
  _Thump get _value => super._value as _Thump;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object objTemp = freezed,
    Object airTemp = freezed,
    Object airHumidity = freezed,
    Object priority = freezed,
  }) {
    return _then(_Thump(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as ThumpTitle,
      objTemp: objTemp == freezed ? _value.objTemp : objTemp as ObjTemp,
      airTemp: airTemp == freezed ? _value.airTemp : airTemp as AirTemp,
      airHumidity: airHumidity == freezed
          ? _value.airHumidity
          : airHumidity as AirHumidity,
      priority: priority == freezed ? _value.priority : priority as bool,
    ));
  }
}

class _$_Thump extends _Thump {
  const _$_Thump(
      {@required this.id,
      @required this.title,
      @required this.objTemp,
      @required this.airTemp,
      @required this.airHumidity,
      @required this.priority})
      : assert(id != null),
        assert(title != null),
        assert(objTemp != null),
        assert(airTemp != null),
        assert(airHumidity != null),
        assert(priority != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ThumpTitle title;
  @override
  final ObjTemp objTemp;
  @override
  final AirTemp airTemp;
  @override
  final AirHumidity airHumidity;
  @override
  final bool priority;

  @override
  String toString() {
    return 'Thump(id: $id, title: $title, objTemp: $objTemp, airTemp: $airTemp, airHumidity: $airHumidity, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Thump &&
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
  _$ThumpCopyWith<_Thump> get copyWith =>
      __$ThumpCopyWithImpl<_Thump>(this, _$identity);
}

abstract class _Thump extends Thump {
  const _Thump._() : super._();
  const factory _Thump(
      {@required UniqueId id,
      @required ThumpTitle title,
      @required ObjTemp objTemp,
      @required AirTemp airTemp,
      @required AirHumidity airHumidity,
      @required bool priority}) = _$_Thump;

  @override
  UniqueId get id;
  @override
  ThumpTitle get title;
  @override
  ObjTemp get objTemp;
  @override
  AirTemp get airTemp;
  @override
  AirHumidity get airHumidity;
  @override
  bool get priority;
  @override
  _$ThumpCopyWith<_Thump> get copyWith;
}
