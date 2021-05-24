part of 'humidity_watcher_bloc.dart';

@freezed
class HumidityWatcherEvent with _$HumidityWatcherEvent {
  const factory HumidityWatcherEvent.started() = _Started;
  const factory HumidityWatcherEvent.received(
    Either<ThumpFailure, KtList<HumidityObj>> failureOrValues,
  ) = _Received;
}
