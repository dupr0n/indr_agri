part of 'thump_form_bloc.dart';

@freezed
abstract class ThumpFormEvent with _$ThumpFormEvent {
  const factory ThumpFormEvent.initialized(Option<Thump> initialThumpOption) = _Initialized;
  const factory ThumpFormEvent.objTempChanged(double temp) = _ObjTempChanged;
  const factory ThumpFormEvent.airTempChanged(double temp) = _AirTempChanged;
  const factory ThumpFormEvent.airHumidityChanged(double humidity) = _AirHumidityChanged;
  const factory ThumpFormEvent.paramsChanged(Parameters params) = _ParamsChanged;
  const factory ThumpFormEvent.saved() = _Saved;
}
