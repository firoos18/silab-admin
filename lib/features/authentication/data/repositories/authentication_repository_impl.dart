import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/core/failures/failures.dart';
import 'package:silab_admin/features/authentication/data/data_sources/local/authentication_data_source.dart';
import 'package:silab_admin/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab_admin/features/authentication/data/models/login_model.dart';
import 'package:silab_admin/features/authentication/domain/entities/login_response_entity.dart';
import 'package:silab_admin/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationApiService _authenticationApiService;
  final AuthenticationLocalDataSource _authenticationLocalDataSource;

  const AuthenticationRepositoryImpl(
      this._authenticationApiService, this._authenticationLocalDataSource);

  @override
  Future<Either<Failures, LoginResponseEntity>?> userLogin(
    LoginModel? loginModel,
  ) async {
    if (loginModel != null) {
      try {
        final result = await _authenticationApiService.userLogin(loginModel);
        saveUserToken(result.token);
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

  @override
  Either<Failures, String> getUserToken() {
    final userToken = _authenticationLocalDataSource.getUserToken();

    if (userToken != null) {
      return Right(userToken);
    } else {
      return Left(RequestFailures("User Not Logged In."));
    }
  }

  @override
  Future<Either<Failures, String>> saveUserToken(String? userToken) async {
    if (userToken != null) {
      await _authenticationLocalDataSource.setUserToken(userToken);
      return const Right('success');
    } else {
      return Left(RequestFailures("failed"));
    }
  }
}
