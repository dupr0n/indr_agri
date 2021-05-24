import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/thumps/i_thump_repository.dart';
import '../../../domain/thumps/objects/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'intensity_bloc.freezed.dart';
part 'intensity_event.dart';
part 'intensity_state.dart';

@injectable
class IntensityWatcherBloc extends Bloc<IntensityWatcherEvent, IntensityWatcherState> {
  final IThumpRepository _thumpRepository;
  StreamSubscription<Either<ThumpFailure, KtList<IntensityObj>>>? streamSubscription;

  IntensityWatcherBloc(this._thumpRepository) : super(const IntensityWatcherState.initial());

  @override
  Stream<IntensityWatcherState> mapEventToState(
    IntensityWatcherEvent event,
  ) async* {
    yield const IntensityWatcherState.loading();
    yield* event.map(
      started: (e) async* {
        await streamSubscription?.cancel();
        streamSubscription = _thumpRepository
            .watchIntensity()
            .listen((values) => add(IntensityWatcherEvent.received(values)));
      },
      received: (e) async* {
        yield e.failureOrValues.fold(
          (f) => IntensityWatcherState.loadFailure(f),
          (intensities) => IntensityWatcherState.loadSuccess(intensities),
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
