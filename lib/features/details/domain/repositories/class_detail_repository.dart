import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/details/domain/entities/class_detail_response_entity.dart';

abstract class ClassDetailRepository {
  Future<Either<Failures, ClassDetailResponseEntity>> getClassDetail(
    String? id,
  );
}
