import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/subjects/domain/entities/subjects_response_entity.dart';
import 'package:silab_admin/features/subjects/domain/repositories/subject_repository.dart';

class GetAllSubjectsUseCase
    implements UseCase<Either<Failures, SubjectsResponseEntity>, Null> {
  final SubjectRepository subjectRepository;

  const GetAllSubjectsUseCase(this.subjectRepository);

  @override
  Future<Either<Failures, SubjectsResponseEntity>> call({Null params}) async {
    return await subjectRepository.getAllSubjects();
  }
}
