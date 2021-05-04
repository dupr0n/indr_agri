// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'intensity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IntensityWatcherEventTearOff {
  const _$IntensityWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Received received(
      Either<ThumpFailure, KtList<IntensityObj>> failureOrValues) {
    return _Received(
      failureOrValues,
    );
  }
}

/// @nodoc
const $IntensityWatcherEvent = _$IntensityWatcherEventTearOff();

/// @nodoc
mixin _$IntensityWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<ThumpFailure, KtList<IntensityObj>> failureOrValues)
        received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<ThumpFailure, KtList<IntensityObj>> failureOrValues)?
        received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Received value) received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntensityWatcherEventCopyWith<$Res> {
  factory $IntensityWatcherEventCopyWith(IntensityWatcherEvent value,
          $Res Function(IntensityWatcherEvent) then) =
      _$IntensityWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IntensityWatcherEventCopyWithImpl<$Res>
    implements $IntensityWatcherEventCopyWith<$Res> {
  _$IntensityWatcherEventCopyWithImpl(this._value, this._then);

  final IntensityWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(IntensityWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$IntensityWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'IntensityWatcherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<ThumpFailure, KtList<IntensityObj>> failureOrValues)
        received,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<ThumpFailure, KtList<IntensityObj>> failureOrValues)?
        received,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Received value) received,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements IntensityWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call({Either<ThumpFailure, KtList<IntensityObj>> failureOrValues});
}

/// @nodoc
class __$ReceivedCopyWithImpl<$Res>
    extends _$IntensityWatcherEventCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object? failureOrValues = freezed,
  }) {
    return _then(_Received(
      failureOrValues == freezed
          ? _value.failureOrValues
          : failureOrValues // ignore: cast_nullable_to_non_nullable
              as Either<ThumpFailure, KtList<IntensityObj>>,
    ));
  }
}

/// @nodoc
class _$_Received implements _Received {
  const _$_Received(this.failureOrValues);

  @override
  final Either<ThumpFailure, KtList<IntensityObj>> failureOrValues;

  @override
  String toString() {
    return 'IntensityWatcherEvent.received(failureOrValues: $failureOrValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Received &&
            (identical(other.failureOrValues, failureOrValues) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrValues, failureOrValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrValues);

  @JsonKey(ignore: true)
  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<ThumpFailure, KtList<IntensityObj>> failureOrValues)
        received,
  }) {
    return received(failureOrValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<ThumpFailure, KtList<IntensityObj>> failureOrValues)?
        received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(failureOrValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Received value) received,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements IntensityWatcherEvent {
  const factory _Received(
      Either<ThumpFailure, KtList<IntensityObj>> failureOrValues) = _$_Received;

  Either<ThumpFailure, KtList<IntensityObj>> get failureOrValues =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReceivedCopyWith<_Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$IntensityWatcherStateTearOff {
  const _$IntensityWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadSuccess loadSuccess(KtList<IntensityObj> intensities) {
    return _LoadSuccess(
      intensities,
    );
  }

  _LoadFailure loadFailure(ThumpFailure thumpFailure) {
    return _LoadFailure(
      thumpFailure,
    );
  }
}

/// @nodoc
const $IntensityWatcherState = _$IntensityWatcherStateTearOff();

/// @nodoc
mixin _$IntensityWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<IntensityObj> intensities) loadSuccess,
    required TResult Function(ThumpFailure thumpFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<IntensityObj> intensities)? loadSuccess,
    TResult Function(ThumpFailure thumpFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntensityWatcherStateCopyWith<$Res> {
  factory $IntensityWatcherStateCopyWith(IntensityWatcherState value,
          $Res Function(IntensityWatcherState) then) =
      _$IntensityWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IntensityWatcherStateCopyWithImpl<$Res>
    implements $IntensityWatcherStateCopyWith<$Res> {
  _$IntensityWatcherStateCopyWithImpl(this._value, this._then);

  final IntensityWatcherState _value;
  // ignore: unused_field
  final $Res Function(IntensityWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$IntensityWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'IntensityWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<IntensityObj> intensities) loadSuccess,
    required TResult Function(ThumpFailure thumpFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<IntensityObj> intensities)? loadSuccess,
    TResult Function(ThumpFailure thumpFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IntensityWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$IntensityWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'IntensityWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<IntensityObj> intensities) loadSuccess,
    required TResult Function(ThumpFailure thumpFailure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<IntensityObj> intensities)? loadSuccess,
    TResult Function(ThumpFailure thumpFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements IntensityWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<IntensityObj> intensities});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$IntensityWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? intensities = freezed,
  }) {
    return _then(_LoadSuccess(
      intensities == freezed
          ? _value.intensities
          : intensities // ignore: cast_nullable_to_non_nullable
              as KtList<IntensityObj>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.intensities);

  @override
  final KtList<IntensityObj> intensities;

  @override
  String toString() {
    return 'IntensityWatcherState.loadSuccess(intensities: $intensities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.intensities, intensities) ||
                const DeepCollectionEquality()
                    .equals(other.intensities, intensities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(intensities);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<IntensityObj> intensities) loadSuccess,
    required TResult Function(ThumpFailure thumpFailure) loadFailure,
  }) {
    return loadSuccess(intensities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<IntensityObj> intensities)? loadSuccess,
    TResult Function(ThumpFailure thumpFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(intensities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements IntensityWatcherState {
  const factory _LoadSuccess(KtList<IntensityObj> intensities) = _$_LoadSuccess;

  KtList<IntensityObj> get intensities => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ThumpFailure thumpFailure});

  $ThumpFailureCopyWith<$Res> get thumpFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$IntensityWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? thumpFailure = freezed,
  }) {
    return _then(_LoadFailure(
      thumpFailure == freezed
          ? _value.thumpFailure
          : thumpFailure // ignore: cast_nullable_to_non_nullable
              as ThumpFailure,
    ));
  }

  @override
  $ThumpFailureCopyWith<$Res> get thumpFailure {
    return $ThumpFailureCopyWith<$Res>(_value.thumpFailure, (value) {
      return _then(_value.copyWith(thumpFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.thumpFailure);

  @override
  final ThumpFailure thumpFailure;

  @override
  String toString() {
    return 'IntensityWatcherState.loadFailure(thumpFailure: $thumpFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.thumpFailure, thumpFailure) ||
                const DeepCollectionEquality()
                    .equals(other.thumpFailure, thumpFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(thumpFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<IntensityObj> intensities) loadSuccess,
    required TResult Function(ThumpFailure thumpFailure) loadFailure,
  }) {
    return loadFailure(thumpFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<IntensityObj> intensities)? loadSuccess,
    TResult Function(ThumpFailure thumpFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(thumpFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements IntensityWatcherState {
  const factory _LoadFailure(ThumpFailure thumpFailure) = _$_LoadFailure;

  ThumpFailure get thumpFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
