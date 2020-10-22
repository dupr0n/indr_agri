part of 'thump_watcher_bloc.dart';

@freezed
abstract class ThumpWatcherEvent with _$ThumpWatcherEvent {
  const factory ThumpWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ThumpWatcherEvent.watchPriorityStarted() = _WatchPriorityStarted;
  const factory ThumpWatcherEvent.thumpsReceived(
    Either<ThumpFailure, KtList<Thump>> failureOrNotes,
  ) = _ThumpsReceived;
}
