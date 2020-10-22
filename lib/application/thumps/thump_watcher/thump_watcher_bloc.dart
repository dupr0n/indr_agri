import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/thumps/i_thump_repository.dart';
import '../../../domain/thumps/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'thump_watcher_bloc.freezed.dart';
part 'thump_watcher_event.dart';
part 'thump_watcher_state.dart';

class ThumpWatcherBloc extends Bloc<ThumpWatcherEvent, ThumpWatcherState> {
  final IThumpRepository _thumpRepository;
  StreamSubscription<Either<ThumpFailure, KtList<Thump>>> thumpStreamSubscription;

  ThumpWatcherBloc(this._thumpRepository) : super(const ThumpWatcherState.initial());

  @override
  Stream<ThumpWatcherState> mapEventToState(
    ThumpWatcherEvent event,
  ) async* {
    yield const ThumpWatcherState.loadInProgress();
    yield* event.map(
      watchAllStarted: (e) async* {
        await thumpStreamSubscription?.cancel();
        thumpStreamSubscription = _thumpRepository
            .watchAll()
            .listen((thumps) => add(ThumpWatcherEvent.thumpsReceived(thumps)));
      },
      watchPriorityStarted: (e) async* {
        await thumpStreamSubscription?.cancel();
        thumpStreamSubscription = _thumpRepository
            .watchPriority()
            .listen((thumps) => add(ThumpWatcherEvent.thumpsReceived(thumps)));
      },
      thumpsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => ThumpWatcherState.loadFailure(f),
          (thumps) => ThumpWatcherState.loadSuccess(thumps),
        );
      },
    );
  }
}
