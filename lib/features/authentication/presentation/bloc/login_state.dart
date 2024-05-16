part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  final String? userToken;
  final String? message;

  const LoginState({this.userToken, this.message});

  @override
  List<Object?> get props => [userToken, message];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoaded extends LoginState {
  const LoginLoaded({super.userToken});
}

final class LoginError extends LoginState {
  const LoginError({super.message});
}
