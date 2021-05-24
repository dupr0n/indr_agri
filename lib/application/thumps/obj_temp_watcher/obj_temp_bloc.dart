import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/thumps/i_thump_repository.dart';
import '../../../domain/thumps/objects/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'obj_temp_bloc.freezed.dart';
part 'obj_temp_event.dart';
part 'obj_temp_state.dart';

@injectable
class ObjTempWatcherBloc extends Bloc<ObjTempWatcherEvent, ObjTempWatcherState> {
  final IThumpRepository _thumpRepository;
  StreamSubscription<Either<ThumpFailure, KtList<ObjTempObj>>>? streamSubscription;

  ObjTempWatcherBloc(this._thumpRepository) : super(const ObjTempWatcherState.initial());

  @override
  Stream<ObjTempWatcherState> mapEventToState(
    ObjTempWatcherEvent event,
  ) async* {
    yield const ObjTempWatcherState.loading();
    yield* event.map(
      started: (e) async* {
        await streamSubscription?.cancel();
        streamSubscription = _thumpRepository
            .watchObjTemp()
            .listen((values) => add(ObjTempWatcherEvent.received(values)));
      },
      received: (e) async* {
        yield e.failureOrValues.fold(
          (f) => ObjTempWatcherState.loadFailure(f),
          (objTemps) => ObjTempWatcherState.loadSuccess(objTemps),
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
