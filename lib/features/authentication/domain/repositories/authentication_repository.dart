import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/authentication/data/models/login_model.dart';
import 'package:silab_admin/features/authentication/domain/entities/login_response_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failures, LoginResponseEntity>?> userLogin(
    LoginModel? loginModel,
  );

  Future<Either<Failures, String>> saveUserToken(String? userToken);

  Either<Failures, String> getUserToken();
}
