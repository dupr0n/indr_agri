part of 'air_temp_watcher_bloc.dart';

@freezed
class AirTempWatcherState with _$AirTempWatcherState {
  const factory AirTempWatcherState.initial() = _Initial;
  const factory AirTempWatcherState.loading() = _Loading;
  const factory AirTempWatcherState.loadSuccess(KtList<AirTempObj> airTemps) = _LoadSuccess;
  const factory AirTempWatcherState.loadFailure(ThumpFailure thumpFailure) = _LoadFailure;
}
