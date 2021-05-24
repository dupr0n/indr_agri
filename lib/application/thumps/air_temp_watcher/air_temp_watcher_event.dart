part of 'air_temp_watcher_bloc.dart';

@freezed
class AirTempWatcherEvent with _$AirTempWatcherEvent {
  const factory AirTempWatcherEvent.started() = _Started;
  const factory AirTempWatcherEvent.received(
    Either<ThumpFailure, KtList<AirTempObj>> failureOrValues,
  ) = _Received;
}
