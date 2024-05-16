import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/authentication/data/models/login_model.dart';
import 'package:silab_admin/features/authentication/domain/entities/login_response_entity.dart';
import 'package:silab_admin/features/authentication/domain/repositories/authentication_repository.dart';

class UserLoginUseCase
    implements UseCase<Either<Failures, LoginResponseEntity>?, LoginModel> {
  final AuthenticationRepository authenticationRepository;

  const UserLoginUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, LoginResponseEntity>?> call(
      {LoginModel? params}) async {
    return await authenticationRepository.userLogin(params);
  }
}
