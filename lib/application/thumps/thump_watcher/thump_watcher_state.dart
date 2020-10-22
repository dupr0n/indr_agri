part of 'thump_watcher_bloc.dart';

@freezed
abstract class ThumpWatcherState with _$ThumpWatcherState {
  const factory ThumpWatcherState.initial() = _Initial;
  const factory ThumpWatcherState.loadInProgress() = _LoadInProgress;
  const factory ThumpWatcherState.loadSuccess(KtList<Thump> thumps) = _LoadSuccess;
  const factory ThumpWatcherState.loadFailure(ThumpFailure thumpFailure) = _LoadFailure;
}
