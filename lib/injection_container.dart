import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/features/authentication/data/data_sources/local/authentication_data_source.dart';
import 'package:silab_admin/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab_admin/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:silab_admin/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:silab_admin/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:silab_admin/features/authentication/domain/usecases/user_login_usecase.dart';
import 'package:silab_admin/features/authentication/presentation/bloc/login_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Shared Preferences
  injector.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  // Data Sources
  injector
      .registerSingleton<AuthenticationApiService>(AuthenticationApiService());
  injector.registerSingleton<AuthenticationLocalDataSource>(
      AuthenticationLocalDataSource(injector()));

  // Repositories
  injector.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl(injector(), injector()));

  // Usecases
  injector.registerSingleton<UserLoginUseCase>(UserLoginUseCase(injector()));
  injector
      .registerSingleton<GetUserTokenUseCase>(GetUserTokenUseCase(injector()));

  // BLOCS
  injector.registerFactory<LoginBloc>(() => LoginBloc(injector(), injector()));
}
