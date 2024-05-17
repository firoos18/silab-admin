import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/details/data/data_source/class_detail_api_service.dart';
import 'package:silab_admin/features/details/domain/entities/class_detail_response_entity.dart';
import 'package:silab_admin/features/details/domain/repositories/class_detail_repository.dart';

class ClassDetailRepositoryImpl implements ClassDetailRepository {
  final ClassDetailApiService _classDetailApiService;

  const ClassDetailRepositoryImpl(this._classDetailApiService);

  @override
  Future<Either<Failures, ClassDetailResponseEntity>> getClassDetail(
      String? id) async {
    try {
      final result = await _classDetailApiService.getClassDetails(id);
      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
