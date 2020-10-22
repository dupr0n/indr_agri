// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thump_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThumpFormEventTearOff {
  const _$ThumpFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Thump> initialThumpOption) {
    return _Initialized(
      initialThumpOption,
    );
  }

// ignore: unused_element
  _ObjTempChanged objTempChanged(double temp) {
    return _ObjTempChanged(
      temp,
    );
  }

// ignore: unused_element
  _AirTempChanged airTempChanged(double temp) {
    return _AirTempChanged(
      temp,
    );
  }

// ignore: unused_element
  _AirHumidityChanged airHumidityChanged(double humidity) {
    return _AirHumidityChanged(
      humidity,
    );
  }

// ignore: unused_element
  _ParamsChanged paramsChanged(Parameters params) {
    return _ParamsChanged(
      params,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $ThumpFormEvent = _$ThumpFormEventTearOff();

mixin _$ThumpFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $ThumpFormEventCopyWith<$Res> {
  factory $ThumpFormEventCopyWith(
          ThumpFormEvent value, $Res Function(ThumpFormEvent) then) =
      _$ThumpFormEventCopyWithImpl<$Res>;
}

class _$ThumpFormEventCopyWithImpl<$Res>
    implements $ThumpFormEventCopyWith<$Res> {
  _$ThumpFormEventCopyWithImpl(this._value, this._then);

  final ThumpFormEvent _value;
  // ignore: unused_field
  final $Res Function(ThumpFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Thump> initialThumpOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$ThumpFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialThumpOption = freezed,
  }) {
    return _then(_Initialized(
      initialThumpOption == freezed
          ? _value.initialThumpOption
          : initialThumpOption as Option<Thump>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialThumpOption)
      : assert(initialThumpOption != null);

  @override
  final Option<Thump> initialThumpOption;

  @override
  String toString() {
    return 'ThumpFormEvent.initialized(initialThumpOption: $initialThumpOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialThumpOption, initialThumpOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialThumpOption, initialThumpOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialThumpOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return initialized(initialThumpOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialThumpOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ThumpFormEvent {
  const factory _Initialized(Option<Thump> initialThumpOption) = _$_Initialized;

  Option<Thump> get initialThumpOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$ObjTempChangedCopyWith<$Res> {
  factory _$ObjTempChangedCopyWith(
          _ObjTempChanged value, $Res Function(_ObjTempChanged) then) =
      __$ObjTempChangedCopyWithImpl<$Res>;
  $Res call({double temp});
}

class __$ObjTempChangedCopyWithImpl<$Res>
    extends _$ThumpFormEventCopyWithImpl<$Res>
    implements _$ObjTempChangedCopyWith<$Res> {
  __$ObjTempChangedCopyWithImpl(
      _ObjTempChanged _value, $Res Function(_ObjTempChanged) _then)
      : super(_value, (v) => _then(v as _ObjTempChanged));

  @override
  _ObjTempChanged get _value => super._value as _ObjTempChanged;

  @override
  $Res call({
    Object temp = freezed,
  }) {
    return _then(_ObjTempChanged(
      temp == freezed ? _value.temp : temp as double,
    ));
  }
}

class _$_ObjTempChanged implements _ObjTempChanged {
  const _$_ObjTempChanged(this.temp) : assert(temp != null);

  @override
  final double temp;

  @override
  String toString() {
    return 'ThumpFormEvent.objTempChanged(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjTempChanged &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @override
  _$ObjTempChangedCopyWith<_ObjTempChanged> get copyWith =>
      __$ObjTempChangedCopyWithImpl<_ObjTempChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return objTempChanged(temp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objTempChanged != null) {
      return objTempChanged(temp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return objTempChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objTempChanged != null) {
      return objTempChanged(this);
    }
    return orElse();
  }
}

abstract class _ObjTempChanged implements ThumpFormEvent {
  const factory _ObjTempChanged(double temp) = _$_ObjTempChanged;

  double get temp;
  _$ObjTempChangedCopyWith<_ObjTempChanged> get copyWith;
}

abstract class _$AirTempChangedCopyWith<$Res> {
  factory _$AirTempChangedCopyWith(
          _AirTempChanged value, $Res Function(_AirTempChanged) then) =
      __$AirTempChangedCopyWithImpl<$Res>;
  $Res call({double temp});
}

class __$AirTempChangedCopyWithImpl<$Res>
    extends _$ThumpFormEventCopyWithImpl<$Res>
    implements _$AirTempChangedCopyWith<$Res> {
  __$AirTempChangedCopyWithImpl(
      _AirTempChanged _value, $Res Function(_AirTempChanged) _then)
      : super(_value, (v) => _then(v as _AirTempChanged));

  @override
  _AirTempChanged get _value => super._value as _AirTempChanged;

  @override
  $Res call({
    Object temp = freezed,
  }) {
    return _then(_AirTempChanged(
      temp == freezed ? _value.temp : temp as double,
    ));
  }
}

class _$_AirTempChanged implements _AirTempChanged {
  const _$_AirTempChanged(this.temp) : assert(temp != null);

  @override
  final double temp;

  @override
  String toString() {
    return 'ThumpFormEvent.airTempChanged(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AirTempChanged &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @override
  _$AirTempChangedCopyWith<_AirTempChanged> get copyWith =>
      __$AirTempChangedCopyWithImpl<_AirTempChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return airTempChanged(temp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (airTempChanged != null) {
      return airTempChanged(temp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return airTempChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (airTempChanged != null) {
      return airTempChanged(this);
    }
    return orElse();
  }
}

abstract class _AirTempChanged implements ThumpFormEvent {
  const factory _AirTempChanged(double temp) = _$_AirTempChanged;

  double get temp;
  _$AirTempChangedCopyWith<_AirTempChanged> get copyWith;
}

abstract class _$AirHumidityChangedCopyWith<$Res> {
  factory _$AirHumidityChangedCopyWith(
          _AirHumidityChanged value, $Res Function(_AirHumidityChanged) then) =
      __$AirHumidityChangedCopyWithImpl<$Res>;
  $Res call({double humidity});
}

class __$AirHumidityChangedCopyWithImpl<$Res>
    extends _$ThumpFormEventCopyWithImpl<$Res>
    implements _$AirHumidityChangedCopyWith<$Res> {
  __$AirHumidityChangedCopyWithImpl(
      _AirHumidityChanged _value, $Res Function(_AirHumidityChanged) _then)
      : super(_value, (v) => _then(v as _AirHumidityChanged));

  @override
  _AirHumidityChanged get _value => super._value as _AirHumidityChanged;

  @override
  $Res call({
    Object humidity = freezed,
  }) {
    return _then(_AirHumidityChanged(
      humidity == freezed ? _value.humidity : humidity as double,
    ));
  }
}

class _$_AirHumidityChanged implements _AirHumidityChanged {
  const _$_AirHumidityChanged(this.humidity) : assert(humidity != null);

  @override
  final double humidity;

  @override
  String toString() {
    return 'ThumpFormEvent.airHumidityChanged(humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AirHumidityChanged &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(humidity);

  @override
  _$AirHumidityChangedCopyWith<_AirHumidityChanged> get copyWith =>
      __$AirHumidityChangedCopyWithImpl<_AirHumidityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return airHumidityChanged(humidity);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (airHumidityChanged != null) {
      return airHumidityChanged(humidity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return airHumidityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (airHumidityChanged != null) {
      return airHumidityChanged(this);
    }
    return orElse();
  }
}

abstract class _AirHumidityChanged implements ThumpFormEvent {
  const factory _AirHumidityChanged(double humidity) = _$_AirHumidityChanged;

  double get humidity;
  _$AirHumidityChangedCopyWith<_AirHumidityChanged> get copyWith;
}

abstract class _$ParamsChangedCopyWith<$Res> {
  factory _$ParamsChangedCopyWith(
          _ParamsChanged value, $Res Function(_ParamsChanged) then) =
      __$ParamsChangedCopyWithImpl<$Res>;
  $Res call({Parameters params});
}

class __$ParamsChangedCopyWithImpl<$Res>
    extends _$ThumpFormEventCopyWithImpl<$Res>
    implements _$ParamsChangedCopyWith<$Res> {
  __$ParamsChangedCopyWithImpl(
      _ParamsChanged _value, $Res Function(_ParamsChanged) _then)
      : super(_value, (v) => _then(v as _ParamsChanged));

  @override
  _ParamsChanged get _value => super._value as _ParamsChanged;

  @override
  $Res call({
    Object params = freezed,
  }) {
    return _then(_ParamsChanged(
      params == freezed ? _value.params : params as Parameters,
    ));
  }
}

class _$_ParamsChanged implements _ParamsChanged {
  const _$_ParamsChanged(this.params) : assert(params != null);

  @override
  final Parameters params;

  @override
  String toString() {
    return 'ThumpFormEvent.paramsChanged(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParamsChanged &&
            (identical(other.params, params) ||
                const DeepCollectionEquality().equals(other.params, params)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(params);

  @override
  _$ParamsChangedCopyWith<_ParamsChanged> get copyWith =>
      __$ParamsChangedCopyWithImpl<_ParamsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return paramsChanged(params);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paramsChanged != null) {
      return paramsChanged(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return paramsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paramsChanged != null) {
      return paramsChanged(this);
    }
    return orElse();
  }
}

abstract class _ParamsChanged implements ThumpFormEvent {
  const factory _ParamsChanged(Parameters params) = _$_ParamsChanged;

  Parameters get params;
  _$ParamsChangedCopyWith<_ParamsChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$ThumpFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ThumpFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thump> initialThumpOption),
    @required Result objTempChanged(double temp),
    @required Result airTempChanged(double temp),
    @required Result airHumidityChanged(double humidity),
    @required Result paramsChanged(Parameters params),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thump> initialThumpOption),
    Result objTempChanged(double temp),
    Result airTempChanged(double temp),
    Result airHumidityChanged(double humidity),
    Result paramsChanged(Parameters params),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objTempChanged(_ObjTempChanged value),
    @required Result airTempChanged(_AirTempChanged value),
    @required Result airHumidityChanged(_AirHumidityChanged value),
    @required Result paramsChanged(_ParamsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(objTempChanged != null);
    assert(airTempChanged != null);
    assert(airHumidityChanged != null);
    assert(paramsChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objTempChanged(_ObjTempChanged value),
    Result airTempChanged(_AirTempChanged value),
    Result airHumidityChanged(_AirHumidityChanged value),
    Result paramsChanged(_ParamsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ThumpFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$ThumpFormStateTearOff {
  const _$ThumpFormStateTearOff();

// ignore: unused_element
  _ThumpFormState call(
      {@required
          Thump thump,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          Option<Either<ThumpFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ThumpFormState(
      thump: thump,
      isSaving: isSaving,
      isEditing: isEditing,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ThumpFormState = _$ThumpFormStateTearOff();

mixin _$ThumpFormState {
  Thump get thump;
  bool get isSaving;
  bool get isEditing;
  Option<Either<ThumpFailure, Unit>> get saveFailureOrSuccessOption;

  $ThumpFormStateCopyWith<ThumpFormState> get copyWith;
}

abstract class $ThumpFormStateCopyWith<$Res> {
  factory $ThumpFormStateCopyWith(
          ThumpFormState value, $Res Function(ThumpFormState) then) =
      _$ThumpFormStateCopyWithImpl<$Res>;
  $Res call(
      {Thump thump,
      bool isSaving,
      bool isEditing,
      Option<Either<ThumpFailure, Unit>> saveFailureOrSuccessOption});

  $ThumpCopyWith<$Res> get thump;
}

class _$ThumpFormStateCopyWithImpl<$Res>
    implements $ThumpFormStateCopyWith<$Res> {
  _$ThumpFormStateCopyWithImpl(this._value, this._then);

  final ThumpFormState _value;
  // ignore: unused_field
  final $Res Function(ThumpFormState) _then;

  @override
  $Res call({
    Object thump = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      thump: thump == freezed ? _value.thump : thump as Thump,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ThumpFailure, Unit>>,
    ));
  }

  @override
  $ThumpCopyWith<$Res> get thump {
    if (_value.thump == null) {
      return null;
    }
    return $ThumpCopyWith<$Res>(_value.thump, (value) {
      return _then(_value.copyWith(thump: value));
    });
  }
}

abstract class _$ThumpFormStateCopyWith<$Res>
    implements $ThumpFormStateCopyWith<$Res> {
  factory _$ThumpFormStateCopyWith(
          _ThumpFormState value, $Res Function(_ThumpFormState) then) =
      __$ThumpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Thump thump,
      bool isSaving,
      bool isEditing,
      Option<Either<ThumpFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ThumpCopyWith<$Res> get thump;
}

class __$ThumpFormStateCopyWithImpl<$Res>
    extends _$ThumpFormStateCopyWithImpl<$Res>
    implements _$ThumpFormStateCopyWith<$Res> {
  __$ThumpFormStateCopyWithImpl(
      _ThumpFormState _value, $Res Function(_ThumpFormState) _then)
      : super(_value, (v) => _then(v as _ThumpFormState));

  @override
  _ThumpFormState get _value => super._value as _ThumpFormState;

  @override
  $Res call({
    Object thump = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ThumpFormState(
      thump: thump == freezed ? _value.thump : thump as Thump,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ThumpFailure, Unit>>,
    ));
  }
}

class _$_ThumpFormState implements _ThumpFormState {
  const _$_ThumpFormState(
      {@required this.thump,
      @required this.isSaving,
      @required this.isEditing,
      @required this.saveFailureOrSuccessOption})
      : assert(thump != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Thump thump;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<ThumpFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ThumpFormState(thump: $thump, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThumpFormState &&
            (identical(other.thump, thump) ||
                const DeepCollectionEquality().equals(other.thump, thump)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(thump) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ThumpFormStateCopyWith<_ThumpFormState> get copyWith =>
      __$ThumpFormStateCopyWithImpl<_ThumpFormState>(this, _$identity);
}

abstract class _ThumpFormState implements ThumpFormState {
  const factory _ThumpFormState(
          {@required
              Thump thump,
          @required
              bool isSaving,
          @required
              bool isEditing,
          @required
              Option<Either<ThumpFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_ThumpFormState;

  @override
  Thump get thump;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<ThumpFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ThumpFormStateCopyWith<_ThumpFormState> get copyWith;
}
