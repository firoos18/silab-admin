import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/add/data/models/add_class_model/add_class_model.dart';
import 'package:silab_admin/features/add/domain/entities/add_class_response_entity/add_class_response_entity.dart';
import 'package:silab_admin/features/add/domain/repositories/add_class_repository.dart';

class AddClassUseCase
    implements
        UseCase<Either<Failures, AddClassResponseEntity>?, AddClassModel> {
  final AddClassRepository addClassRepository;

  const AddClassUseCase(this.addClassRepository);

  @override
  Future<Either<Failures, AddClassResponseEntity>?> call(
      {AddClassModel? params}) async {
    return await addClassRepository.addClass(params!);
  }
}
