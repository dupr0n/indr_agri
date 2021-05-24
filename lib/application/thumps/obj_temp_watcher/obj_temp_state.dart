part of 'obj_temp_bloc.dart';

@freezed
class ObjTempWatcherState with _$ObjTempWatcherState {
  const factory ObjTempWatcherState.initial() = _Initial;
  const factory ObjTempWatcherState.loading() = _Loading;
  const factory ObjTempWatcherState.loadSuccess(KtList<ObjTempObj> objTemps) = _LoadSuccess;
  const factory ObjTempWatcherState.loadFailure(ThumpFailure thumpFailure) = _LoadFailure;
}
