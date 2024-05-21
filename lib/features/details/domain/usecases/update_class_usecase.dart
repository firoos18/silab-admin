import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/details/data/models/update_class_model.dart';
import 'package:silab_admin/features/details/domain/entities/class_detail_response/class_detail_response_entity.dart';
import 'package:silab_admin/features/details/domain/repositories/class_detail_repository.dart';

class UpdateClassUseCase
    implements UseCase<Either<Failures, ClassDetailResponseEntity>, Null> {
  final ClassDetailRepository classDetailRepository;

  const UpdateClassUseCase(this.classDetailRepository);

  @override
  Future<Either<Failures, ClassDetailResponseEntity>> call(
      {Null params, String? id, UpdateClassModel? updateData}) async {
    return await classDetailRepository.updateClass(id, updateData!);
  }
}
