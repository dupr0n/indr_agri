import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/thumps/i_thump_repository.dart';
import '../../../domain/thumps/objects/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'ph_level_bloc.freezed.dart';
part 'ph_level_event.dart';
part 'ph_level_state.dart';

@injectable
class PhLevelWatcherBloc extends Bloc<PhLevelWatcherEvent, PhLevelWatcherState> {
  final IThumpRepository _thumpRepository;
  StreamSubscription<Either<ThumpFailure, KtList<PhLevelObj>>>? streamSubscription;

  PhLevelWatcherBloc(this._thumpRepository) : super(const PhLevelWatcherState.initial());

  @override
  Stream<PhLevelWatcherState> mapEventToState(
    PhLevelWatcherEvent event,
  ) async* {
    yield const PhLevelWatcherState.loading();
    yield* event.map(
      started: (e) async* {
        await streamSubscription?.cancel();
        streamSubscription = _thumpRepository
            .watchPhLevel()
            .listen((values) => add(PhLevelWatcherEvent.received(values)));
      },
      received: (e) async* {
        yield e.failureOrValues.fold(
          (f) => PhLevelWatcherState.loadFailure(f),
          (phLevels) => PhLevelWatcherState.loadSuccess(phLevels),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }
}
