import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/details/data/models/update_class_model.dart';
import 'package:silab_admin/features/details/domain/entities/class_detail_response/class_detail_response_entity.dart';

abstract class ClassDetailRepository {
  Future<Either<Failures, ClassDetailResponseEntity>> getClassDetail(
    String? id,
  );

  Future<Either<Failures, ClassDetailResponseEntity>> updateClass(
    String? id,
    UpdateClassModel updateData,
  );
}
