part of 'intensity_bloc.dart';

@freezed
class IntensityWatcherState with _$IntensityWatcherState {
  const factory IntensityWatcherState.initial() = _Initial;
  const factory IntensityWatcherState.loading() = _Loading;
  const factory IntensityWatcherState.loadSuccess(KtList<IntensityObj> intensities) = _LoadSuccess;
  const factory IntensityWatcherState.loadFailure(ThumpFailure thumpFailure) = _LoadFailure;
}
