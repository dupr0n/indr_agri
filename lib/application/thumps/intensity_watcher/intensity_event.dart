part of 'intensity_bloc.dart';

@freezed
class IntensityWatcherEvent with _$IntensityWatcherEvent {
  const factory IntensityWatcherEvent.started() = _Started;
  const factory IntensityWatcherEvent.received(
    Either<ThumpFailure, KtList<IntensityObj>> failureOrValues,
  ) = _Received;
}
