import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'thump.dart';
import 'thump_failure.dart';

abstract class IThumpRepository {
  Stream<Either<ThumpFailure, KtList<Thump>>> watchCurrent();
  Stream<Either<ThumpFailure, KtList<Thump>>> watchTemplates();
  Future<Either<ThumpFailure, Unit>> updateCurrent(Thump thump);
  Future<Either<ThumpFailure, Unit>> create(Thump thump);
  Future<Either<ThumpFailure, Unit>> update(Thump thump);
  Future<Either<ThumpFailure, Unit>> delete(Thump thump);
}
