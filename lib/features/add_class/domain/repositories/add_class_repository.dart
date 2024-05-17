import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/add_class/data/models/add_class_model.dart';
import 'package:silab_admin/features/add_class/domain/entities/add_class_response_entity.dart';

abstract class AddClassRepository {
  Future<Either<Failures, AddClassResponseEntity>?> addClass(
    AddClassModel addClassModel,
  );
}
