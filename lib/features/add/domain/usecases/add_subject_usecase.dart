import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/add/data/models/add_subject_model/add_subject_model.dart';
import 'package:silab_admin/features/add/domain/entities/add_subject_response_entity/add_subject_response_entity.dart';
import 'package:silab_admin/features/add/domain/repositories/add_subject_repository.dart';

class AddSubjectUseCase
    implements
        UseCase<Either<Failures, AddSubjectResponseEntity>, AddSubjectModel> {
  final AddSubjectRepository addSubjectRepository;

  const AddSubjectUseCase(this.addSubjectRepository);

  @override
  Future<Either<Failures, AddSubjectResponseEntity>> call(
      {AddSubjectModel? params}) async {
    return await addSubjectRepository.addSubject(params!);
  }
}
