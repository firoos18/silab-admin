import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_by_id_response_entity.dart';
import 'package:silab_admin/features/subjects/domain/repositories/subject_repository.dart';

class GetSubjectByIdUseCase
    implements UseCase<Either<Failures, SubjectByIdResponseEntity>, String> {
  final SubjectRepository subjectRepository;

  const GetSubjectByIdUseCase(this.subjectRepository);

  @override
  Future<Either<Failures, SubjectByIdResponseEntity>> call(
      {String? params}) async {
    return await subjectRepository.getSubjectById(params);
  }
}
