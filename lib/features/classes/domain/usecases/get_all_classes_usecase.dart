import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/classes/domain/entities/class_response_entity.dart';
import 'package:silab_admin/features/classes/domain/repositories/class_repository.dart';

class GetAllClassesUseCase
    implements UseCase<Either<Failures, ClassResponseEntity>, Null> {
  final ClassRepository classRepository;

  const GetAllClassesUseCase(this.classRepository);

  @override
  Future<Either<Failures, ClassResponseEntity>> call({Null params}) async {
    return await classRepository.getAllClasses();
  }
}
