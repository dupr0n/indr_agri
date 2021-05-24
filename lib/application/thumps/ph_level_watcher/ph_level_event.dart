part of 'ph_level_bloc.dart';

@freezed
class PhLevelWatcherEvent with _$PhLevelWatcherEvent {
  const factory PhLevelWatcherEvent.started() = _Started;
  const factory PhLevelWatcherEvent.received(
    Either<ThumpFailure, KtList<PhLevelObj>> failureOrValues,
  ) = _Received;
}
