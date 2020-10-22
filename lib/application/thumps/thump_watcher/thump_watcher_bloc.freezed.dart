// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thump_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThumpWatcherEventTearOff {
  const _$ThumpWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchPriorityStarted watchPriorityStarted() {
    return const _WatchPriorityStarted();
  }

// ignore: unused_element
  _ThumpsReceived thumpsReceived(
      Either<ThumpFailure, KtList<Thump>> failureOrNotes) {
    return _ThumpsReceived(
      failureOrNotes,
    );
  }
}

// ignore: unused_element
const $ThumpWatcherEvent = _$ThumpWatcherEventTearOff();

mixin _$ThumpWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchPriorityStarted(),
    @required
        Result thumpsReceived(
            Either<ThumpFailure, KtList<Thump>> failureOrNotes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchPriorityStarted(),
    Result thumpsReceived(Either<ThumpFailure, KtList<Thump>> failureOrNotes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchPriorityStarted(_WatchPriorityStarted value),
    @required Result thumpsReceived(_ThumpsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchPriorityStarted(_WatchPriorityStarted value),
    Result thumpsReceived(_ThumpsReceived value),
    @required Result orElse(),
  });
}

abstract class $ThumpWatcherEventCopyWith<$Res> {
  factory $ThumpWatcherEventCopyWith(
          ThumpWatcherEvent value, $Res Function(ThumpWatcherEvent) then) =
      _$ThumpWatcherEventCopyWithImpl<$Res>;
}

class _$ThumpWatcherEventCopyWithImpl<$Res>
    implements $ThumpWatcherEventCopyWith<$Res> {
  _$ThumpWatcherEventCopyWithImpl(this._value, this._then);

  final ThumpWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ThumpWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ThumpWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ThumpWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchPriorityStarted(),
    @required
        Result thumpsReceived(
            Either<ThumpFailure, KtList<Thump>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchPriorityStarted != null);
    assert(thumpsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchPriorityStarted(),
    Result thumpsReceived(Either<ThumpFailure, KtList<Thump>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchPriorityStarted(_WatchPriorityStarted value),
    @required Result thumpsReceived(_ThumpsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchPriorityStarted != null);
    assert(thumpsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchPriorityStarted(_WatchPriorityStarted value),
    Result thumpsReceived(_ThumpsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ThumpWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$WatchPriorityStartedCopyWith<$Res> {
  factory _$WatchPriorityStartedCopyWith(_WatchPriorityStarted value,
          $Res Function(_WatchPriorityStarted) then) =
      __$WatchPriorityStartedCopyWithImpl<$Res>;
}

class __$WatchPriorityStartedCopyWithImpl<$Res>
    extends _$ThumpWatcherEventCopyWithImpl<$Res>
    implements _$WatchPriorityStartedCopyWith<$Res> {
  __$WatchPriorityStartedCopyWithImpl(
      _WatchPriorityStarted _value, $Res Function(_WatchPriorityStarted) _then)
      : super(_value, (v) => _then(v as _WatchPriorityStarted));

  @override
  _WatchPriorityStarted get _value => super._value as _WatchPriorityStarted;
}

class _$_WatchPriorityStarted implements _WatchPriorityStarted {
  const _$_WatchPriorityStarted();

  @override
  String toString() {
    return 'ThumpWatcherEvent.watchPriorityStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchPriorityStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchPriorityStarted(),
    @required
        Result thumpsReceived(
            Either<ThumpFailure, KtList<Thump>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchPriorityStarted != null);
    assert(thumpsReceived != null);
    return watchPriorityStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchPriorityStarted(),
    Result thumpsReceived(Either<ThumpFailure, KtList<Thump>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPriorityStarted != null) {
      return watchPriorityStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchPriorityStarted(_WatchPriorityStarted value),
    @required Result thumpsReceived(_ThumpsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchPriorityStarted != null);
    assert(thumpsReceived != null);
    return watchPriorityStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchPriorityStarted(_WatchPriorityStarted value),
    Result thumpsReceived(_ThumpsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPriorityStarted != null) {
      return watchPriorityStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchPriorityStarted implements ThumpWatcherEvent {
  const factory _WatchPriorityStarted() = _$_WatchPriorityStarted;
}

abstract class _$ThumpsReceivedCopyWith<$Res> {
  factory _$ThumpsReceivedCopyWith(
          _ThumpsReceived value, $Res Function(_ThumpsReceived) then) =
      __$ThumpsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ThumpFailure, KtList<Thump>> failureOrNotes});
}

class __$ThumpsReceivedCopyWithImpl<$Res>
    extends _$ThumpWatcherEventCopyWithImpl<$Res>
    implements _$ThumpsReceivedCopyWith<$Res> {
  __$ThumpsReceivedCopyWithImpl(
      _ThumpsReceived _value, $Res Function(_ThumpsReceived) _then)
      : super(_value, (v) => _then(v as _ThumpsReceived));

  @override
  _ThumpsReceived get _value => super._value as _ThumpsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
  }) {
    return _then(_ThumpsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<ThumpFailure, KtList<Thump>>,
    ));
  }
}

class _$_ThumpsReceived implements _ThumpsReceived {
  const _$_ThumpsReceived(this.failureOrNotes) : assert(failureOrNotes != null);

  @override
  final Either<ThumpFailure, KtList<Thump>> failureOrNotes;

  @override
  String toString() {
    return 'ThumpWatcherEvent.thumpsReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThumpsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @override
  _$ThumpsReceivedCopyWith<_ThumpsReceived> get copyWith =>
      __$ThumpsReceivedCopyWithImpl<_ThumpsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchPriorityStarted(),
    @required
        Result thumpsReceived(
            Either<ThumpFailure, KtList<Thump>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchPriorityStarted != null);
    assert(thumpsReceived != null);
    return thumpsReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchPriorityStarted(),
    Result thumpsReceived(Either<ThumpFailure, KtList<Thump>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (thumpsReceived != null) {
      return thumpsReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchPriorityStarted(_WatchPriorityStarted value),
    @required Result thumpsReceived(_ThumpsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchPriorityStarted != null);
    assert(thumpsReceived != null);
    return thumpsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchPriorityStarted(_WatchPriorityStarted value),
    Result thumpsReceived(_ThumpsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (thumpsReceived != null) {
      return thumpsReceived(this);
    }
    return orElse();
  }
}

abstract class _ThumpsReceived implements ThumpWatcherEvent {
  const factory _ThumpsReceived(
      Either<ThumpFailure, KtList<Thump>> failureOrNotes) = _$_ThumpsReceived;

  Either<ThumpFailure, KtList<Thump>> get failureOrNotes;
  _$ThumpsReceivedCopyWith<_ThumpsReceived> get copyWith;
}

class _$ThumpWatcherStateTearOff {
  const _$ThumpWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Thump> thumps) {
    return _LoadSuccess(
      thumps,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ThumpFailure thumpFailure) {
    return _LoadFailure(
      thumpFailure,
    );
  }
}

// ignore: unused_element
const $ThumpWatcherState = _$ThumpWatcherStateTearOff();

mixin _$ThumpWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Thump> thumps),
    @required Result loadFailure(ThumpFailure thumpFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Thump> thumps),
    Result loadFailure(ThumpFailure thumpFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ThumpWatcherStateCopyWith<$Res> {
  factory $ThumpWatcherStateCopyWith(
          ThumpWatcherState value, $Res Function(ThumpWatcherState) then) =
      _$ThumpWatcherStateCopyWithImpl<$Res>;
}

class _$ThumpWatcherStateCopyWithImpl<$Res>
    implements $ThumpWatcherStateCopyWith<$Res> {
  _$ThumpWatcherStateCopyWithImpl(this._value, this._then);

  final ThumpWatcherState _value;
  // ignore: unused_field
  final $Res Function(ThumpWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ThumpWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ThumpWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Thump> thumps),
    @required Result loadFailure(ThumpFailure thumpFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Thump> thumps),
    Result loadFailure(ThumpFailure thumpFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThumpWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ThumpWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ThumpWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Thump> thumps),
    @required Result loadFailure(ThumpFailure thumpFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Thump> thumps),
    Result loadFailure(ThumpFailure thumpFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ThumpWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Thump> thumps});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ThumpWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object thumps = freezed,
  }) {
    return _then(_LoadSuccess(
      thumps == freezed ? _value.thumps : thumps as KtList<Thump>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.thumps) : assert(thumps != null);

  @override
  final KtList<Thump> thumps;

  @override
  String toString() {
    return 'ThumpWatcherState.loadSuccess(thumps: $thumps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.thumps, thumps) ||
                const DeepCollectionEquality().equals(other.thumps, thumps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(thumps);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Thump> thumps),
    @required Result loadFailure(ThumpFailure thumpFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(thumps);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Thump> thumps),
    Result loadFailure(ThumpFailure thumpFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(thumps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ThumpWatcherState {
  const factory _LoadSuccess(KtList<Thump> thumps) = _$_LoadSuccess;

  KtList<Thump> get thumps;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ThumpFailure thumpFailure});

  $ThumpFailureCopyWith<$Res> get thumpFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ThumpWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object thumpFailure = freezed,
  }) {
    return _then(_LoadFailure(
      thumpFailure == freezed
          ? _value.thumpFailure
          : thumpFailure as ThumpFailure,
    ));
  }

  @override
  $ThumpFailureCopyWith<$Res> get thumpFailure {
    if (_value.thumpFailure == null) {
      return null;
    }
    return $ThumpFailureCopyWith<$Res>(_value.thumpFailure, (value) {
      return _then(_value.copyWith(thumpFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.thumpFailure) : assert(thumpFailure != null);

  @override
  final ThumpFailure thumpFailure;

  @override
  String toString() {
    return 'ThumpWatcherState.loadFailure(thumpFailure: $thumpFailure)';
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

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Thump> thumps),
    @required Result loadFailure(ThumpFailure thumpFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(thumpFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Thump> thumps),
    Result loadFailure(ThumpFailure thumpFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(thumpFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ThumpWatcherState {
  const factory _LoadFailure(ThumpFailure thumpFailure) = _$_LoadFailure;

  ThumpFailure get thumpFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
