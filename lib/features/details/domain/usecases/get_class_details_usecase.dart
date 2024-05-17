import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/details/domain/entities/class_detail_response_entity.dart';
import 'package:silab_admin/features/details/domain/repositories/class_detail_repository.dart';

class GetClassDetailsUseCase
    implements UseCase<Either<Failures, ClassDetailResponseEntity>, String> {
  final ClassDetailRepository classDetailRepository;

  const GetClassDetailsUseCase(this.classDetailRepository);

  @override
  Future<Either<Failures, ClassDetailResponseEntity>> call(
      {String? params}) async {
    return await classDetailRepository.getClassDetail(params);
  }
}
