part of 'humidity_watcher_bloc.dart';

@freezed
class HumidityWatcherState with _$HumidityWatcherState {
  const factory HumidityWatcherState.initial() = _Initial;
  const factory HumidityWatcherState.loading() = _Loading;
  const factory HumidityWatcherState.loadSuccess(KtList<HumidityObj> humidities) = _LoadSuccess;
  const factory HumidityWatcherState.loadFailure(ThumpFailure thumpFailure) = _LoadFailure;
}
