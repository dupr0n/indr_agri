import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/thumps/i_thump_repository.dart';
import '../../domain/thumps/thump.dart';
import '../../domain/thumps/thump_failure.dart';

@LazySingleton(as: IThumpRepository)
class ThumpRepository implements IThumpRepository {
  @override
  Future<Either<ThumpFailure, Unit>> create(Thump thump) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ThumpFailure, Unit>> delete(Thump thump) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ThumpFailure, Unit>> update(Thump thump) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ThumpFailure, KtList<Thump>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<ThumpFailure, KtList<Thump>>> watchPriority() {
    // TODO: implement watchPriority
    throw UnimplementedError();
  }
}
