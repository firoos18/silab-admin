import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/add/data/data_sources/add_subject_api_service.dart';
import 'package:silab_admin/features/add/data/models/add_subject_model/add_subject_model.dart';
import 'package:silab_admin/features/add/domain/entities/add_subject_response_entity/add_subject_response_entity.dart';
import 'package:silab_admin/features/add/domain/repositories/add_subject_repository.dart';

class AddSubjectRepositoryImpl implements AddSubjectRepository {
  final AddSubjectApiService _addSubjectApiService;

  const AddSubjectRepositoryImpl(this._addSubjectApiService);

  @override
  Future<Either<Failures, AddSubjectResponseEntity>> addSubject(
      AddSubjectModel? subjectModel) async {
    try {
      final result = await _addSubjectApiService.addSubject(subjectModel!);
      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
