import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/classes/data/datasources/class_api_service.dart';
import 'package:silab_admin/features/classes/domain/entities/class_response_entity.dart';
import 'package:silab_admin/features/classes/domain/repositories/class_repository.dart';

class ClassRepositoryImpl implements ClassRepository {
  final ClassApiService _classApiService;

  const ClassRepositoryImpl(this._classApiService);

  @override
  Future<Either<Failures, ClassResponseEntity>> getAllClasses() async {
    try {
      final result = await _classApiService.getAllClasses();
      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
