part of 'obj_temp_bloc.dart';

@freezed
class ObjTempWatcherEvent with _$ObjTempWatcherEvent {
  const factory ObjTempWatcherEvent.started() = _Started;
  const factory ObjTempWatcherEvent.received(
    Either<ThumpFailure, KtList<ObjTempObj>> failureOrValues,
  ) = _Received;
}
