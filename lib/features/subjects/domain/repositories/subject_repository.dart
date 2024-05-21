import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_by_id_response/subject_by_id_response_entity.dart';
import 'package:silab_admin/features/subjects/domain/entities/subjects_response/subjects_response_entity.dart';

abstract class SubjectRepository {
  Future<Either<Failures, SubjectsResponseEntity>> getAllSubjects();

  Future<Either<Failures, SubjectByIdResponseEntity>> getSubjectById(
      String? id);
}
