import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:silab_admin/features/authentication/data/models/login_model.dart';
import 'package:silab_admin/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:silab_admin/features/authentication/domain/usecases/user_login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserLoginUseCase _userLoginUseCase;
  final GetUserTokenUseCase _getUserTokenUseCase;

  LoginBloc(this._userLoginUseCase, this._getUserTokenUseCase)
      : super(LoginInitial()) {
    on<LoginButtonTapped>(onLoginButtonTapped);
    on<ApplicationOpened>(onLoginButtonTapped);
  }

  void onLoginButtonTapped(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    final loginResponse = await _userLoginUseCase.authenticationRepository
        .userLogin(event.loginModel);

    if (loginResponse != null) {
      loginResponse.fold(
        (left) => emit(LoginError(message: left.message)),
        (right) => emit(LoginLoaded(userToken: right.token)),
      );
    } else {
      emit(const LoginError(message: "An Unknown Error Occurred."));
    }
  }

  void onApplicationOpened(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    final token = _getUserTokenUseCase.authenticationRepository.getUserToken();

    token.fold(
      (left) => emit(LoginInitial()),
      (right) => emit(const LoginLoaded()),
    );
  }
}
