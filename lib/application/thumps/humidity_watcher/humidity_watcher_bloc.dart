import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/thumps/i_thump_repository.dart';
import '../../../domain/thumps/objects/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'humidity_watcher_bloc.freezed.dart';
part 'humidity_watcher_event.dart';
part 'humidity_watcher_state.dart';

@injectable
class HumidityWatcherBloc extends Bloc<HumidityWatcherEvent, HumidityWatcherState> {
  final IThumpRepository _thumpRepository;
  StreamSubscription<Either<ThumpFailure, KtList<HumidityObj>>>? streamSubscription;

  HumidityWatcherBloc(this._thumpRepository) : super(const HumidityWatcherState.initial());

  @override
  Stream<HumidityWatcherState> mapEventToState(
    HumidityWatcherEvent event,
  ) async* {
    yield const HumidityWatcherState.loading();
    yield* event.map(
      started: (e) async* {
        await streamSubscription?.cancel();
        streamSubscription = _thumpRepository
            .watchHumidity()
            .listen((values) => add(HumidityWatcherEvent.received(values)));
      },
      received: (e) async* {
        yield e.failureOrValues.fold(
          (f) => HumidityWatcherState.loadFailure(f),
          (humidities) => HumidityWatcherState.loadSuccess(humidities),
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
