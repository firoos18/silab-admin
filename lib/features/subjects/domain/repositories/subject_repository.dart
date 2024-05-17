import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/subjects/domain/entities/subjects_response_entity.dart';

abstract class SubjectRepository {
  Future<Either<Failures, SubjectsResponseEntity>> getAllSubjects();
}
