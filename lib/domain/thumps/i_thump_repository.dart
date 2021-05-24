import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'objects/thump.dart';
import 'thump_failure.dart';

abstract class IThumpRepository {
  Stream<Either<ThumpFailure, KtList<AirTempObj>>> watchAirTemp();
  Stream<Either<ThumpFailure, KtList<HumidityObj>>> watchHumidity();
  Stream<Either<ThumpFailure, KtList<IntensityObj>>> watchIntensity();
  Stream<Either<ThumpFailure, KtList<ObjTempObj>>> watchObjTemp();
  Stream<Either<ThumpFailure, KtList<PhLevelObj>>> watchPhLevel();
}
