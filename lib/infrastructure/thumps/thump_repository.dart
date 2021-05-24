import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/thumps/i_thump_repository.dart';
import '../../domain/thumps/objects/thump.dart';
import '../../domain/thumps/thump_failure.dart';
import '../core/firestore_helpers.dart';
import 'thump_dto.dart';

@LazySingleton(as: IThumpRepository)
class ThumpRepository implements IThumpRepository {
  final FirebaseFirestore _firestore;

  ThumpRepository(this._firestore);

  @override
  Stream<Either<ThumpFailure, KtList<AirTempObj>>> watchAirTemp() async* {
    yield* _firestore.airTempCollection
        .orderBy('time', descending: true)
        .snapshots()
        .map((snap) => right<ThumpFailure, KtList<AirTempObj>>(
            snap.docs.map((doc) => AirTempDTO.fromFirestore(doc).toDomain()).toImmutableList()))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          (error.message ?? 'Error: Firestore error is null').contains('PERMISSION_DENIED')) {
        return left(const ThumpFailure.insufficientPermission());
      } else {
        return left(const ThumpFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ThumpFailure, KtList<HumidityObj>>> watchHumidity() async* {
    yield* _firestore.humidityCollection
        .orderBy('time', descending: true)
        .snapshots()
        .map((snap) => right<ThumpFailure, KtList<HumidityObj>>(
            snap.docs.map((doc) => HumidityDTO.fromFirestore(doc).toDomain()).toImmutableList()))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          (error.message ?? 'Error: Firestore error is null').contains('PERMISSION_DENIED')) {
        return left(const ThumpFailure.insufficientPermission());
      } else {
        return left(const ThumpFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ThumpFailure, KtList<IntensityObj>>> watchIntensity() async* {
    yield* _firestore.intensityCollection
        .orderBy('time', descending: true)
        .snapshots()
        .map((snap) => right<ThumpFailure, KtList<IntensityObj>>(
            snap.docs.map((doc) => IntensityDTO.fromFirestore(doc).toDomain()).toImmutableList()))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          (error.message ?? 'Error: Firestore error is null').contains('PERMISSION_DENIED')) {
        return left(const ThumpFailure.insufficientPermission());
      } else {
        return left(const ThumpFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ThumpFailure, KtList<ObjTempObj>>> watchObjTemp() async* {
    yield* _firestore.objTempCollection
        .orderBy('time', descending: true)
        .snapshots()
        .map((snap) => right<ThumpFailure, KtList<ObjTempObj>>(
            snap.docs.map((doc) => ObjTempDTO.fromFirestore(doc).toDomain()).toImmutableList()))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          (error.message ?? 'Error: Firestore error not found').contains('PERMISSION_DENIED')) {
        return left(const ThumpFailure.insufficientPermission());
      } else {
        return left(const ThumpFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ThumpFailure, KtList<PhLevelObj>>> watchPhLevel() async* {
    yield* _firestore.pHLevelCollection
        .orderBy('time', descending: true)
        .snapshots()
        .map((snap) => right<ThumpFailure, KtList<PhLevelObj>>(
            snap.docs.map((doc) => PhLevelDTO.fromFirestore(doc).toDomain()).toImmutableList()))
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          (error.message ?? 'Error: Firestore error not found').contains('PERMISSION_DENIED')) {
        return left(const ThumpFailure.insufficientPermission());
      } else {
        return left(const ThumpFailure.unexpected());
      }
    });
  }
}
