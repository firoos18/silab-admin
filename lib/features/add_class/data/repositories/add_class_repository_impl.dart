import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/add_class/data/data_sources/add_class_api_service.dart';
import 'package:silab_admin/features/add_class/data/models/add_class_model.dart';
import 'package:silab_admin/features/add_class/domain/entities/add_class_response_entity.dart';
import 'package:silab_admin/features/add_class/domain/repositories/add_class_repository.dart';

class AddClassRepositoryImpl implements AddClassRepository {
  final AddClassApiService _addClassApiService;

  const AddClassRepositoryImpl(this._addClassApiService);

  @override
  Future<Either<Failures, AddClassResponseEntity>?> addClass(
      AddClassModel? addClassModel) async {
    if (addClassModel != null) {
      try {
        final result = await _addClassApiService.addClass(addClassModel);
        return Right(result);
      } on RequestErrorException catch (e) {
        return Left(RequestFailures(e.message));
      } on SocketException catch (e) {
        return Left(RequestFailures(e.message));
      }
    } else {
      return null;
    }
  }
}
