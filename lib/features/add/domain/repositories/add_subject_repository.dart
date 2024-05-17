import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/add/data/models/add_subject_model/add_subject_model.dart';
import 'package:silab_admin/features/add/domain/entities/add_subject_response_entity/add_subject_response_entity.dart';

abstract class AddSubjectRepository {
  Future<Either<Failures, AddSubjectResponseEntity>> addSubject(
    AddSubjectModel? subjectModel,
  );
}
