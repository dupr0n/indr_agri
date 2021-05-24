import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/thumps/i_thump_repository.dart';
import '../../../domain/thumps/objects/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'air_temp_watcher_bloc.freezed.dart';
part 'air_temp_watcher_event.dart';
part 'air_temp_watcher_state.dart';

@injectable
class AirTempWatcherBloc extends Bloc<AirTempWatcherEvent, AirTempWatcherState> {
  final IThumpRepository _thumpRepository;
  StreamSubscription<Either<ThumpFailure, KtList<AirTempObj>>>? streamSubscription;

  AirTempWatcherBloc(this._thumpRepository) : super(const AirTempWatcherState.initial());

  @override
  Stream<AirTempWatcherState> mapEventToState(
    AirTempWatcherEvent event,
  ) async* {
    yield const AirTempWatcherState.loading();
    yield* event.map(
      started: (e) async* {
        await streamSubscription?.cancel();
        streamSubscription = _thumpRepository
            .watchAirTemp()
            .listen((values) => add(AirTempWatcherEvent.received(values)));
      },
      received: (e) async* {
        yield e.failureOrValues.fold(
          (f) => AirTempWatcherState.loadFailure(f),
          (airTemps) => AirTempWatcherState.loadSuccess(airTemps),
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
