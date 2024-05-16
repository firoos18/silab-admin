import 'package:either_dart/either.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/core/usecases/usecases.dart';
import 'package:silab_admin/features/authentication/domain/repositories/authentication_repository.dart';

class GetUserTokenUseCase implements UseCase<Either<Failures, String>, Null> {
  final AuthenticationRepository authenticationRepository;

  const GetUserTokenUseCase(this.authenticationRepository);

  @override
  Future<Either<Failures, String>> call({Null params}) async {
    return authenticationRepository.getUserToken();
  }
}
