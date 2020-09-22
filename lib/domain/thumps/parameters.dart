// ignore_for_file: constant_identifier_names
const OBJECT_TEMP_NAME = 'ObjectTemperature';
const List<double> OBJECT_TEMP_LIMIT = [-100, 200];
const AIR_TEMP_NAME = 'AirTemperature';
const List<double> AIR_TEMP_LIMIT = [-100, 200];
const AIR_HUMIDITY_NAME = 'AirHumidity';
const List<double> AIR_HUMIDITY_LIMIT = [-5, 23];

const paramLimits = {
  OBJECT_TEMP_NAME: OBJECT_TEMP_LIMIT,
  AIR_TEMP_NAME: AIR_TEMP_LIMIT,
  AIR_HUMIDITY_NAME: AIR_HUMIDITY_LIMIT,
};
