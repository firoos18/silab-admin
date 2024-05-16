import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/classes/domain/entities/class_response_entity.dart';

abstract class ClassRepository {
  Future<Either<Failures, ClassResponseEntity>> getAllClasses();
}
