import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/subjects/data/data_sources/subject_api_service.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_by_id_response_entity.dart';
import 'package:silab_admin/features/subjects/domain/entities/subjects_response_entity.dart';
import 'package:silab_admin/features/subjects/domain/repositories/subject_repository.dart';

class SubjectRepositoryImpl implements SubjectRepository {
  final SubjectApiService _subjectApiService;

  const SubjectRepositoryImpl(this._subjectApiService);

  @override
  Future<Either<Failures, SubjectsResponseEntity>> getAllSubjects() async {
    try {
      final result = await _subjectApiService.getAllSubjects();
      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, SubjectByIdResponseEntity>> getSubjectById(
      String? id) async {
    try {
      final result = await _subjectApiService.getSubjectById(id);
      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
