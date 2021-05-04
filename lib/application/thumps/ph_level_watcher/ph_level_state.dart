part of 'ph_level_bloc.dart';

@freezed
class PhLevelWatcherState with _$PhLevelWatcherState {
  const factory PhLevelWatcherState.initial() = _Initial;
  const factory PhLevelWatcherState.loading() = _Loading;
  const factory PhLevelWatcherState.loadSuccess(KtList<PhLevelObj> phLevels) = _LoadSuccess;
  const factory PhLevelWatcherState.loadFailure(ThumpFailure thumpFailure) = _LoadFailure;
}
