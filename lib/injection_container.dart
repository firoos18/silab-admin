import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/features/add/data/data_sources/add_class_api_service.dart';
import 'package:silab_admin/features/add/data/data_sources/add_subject_api_service.dart';
import 'package:silab_admin/features/add/data/repositories/add_class_repository_impl.dart';
import 'package:silab_admin/features/add/data/repositories/add_subject_repository_impl.dart';
import 'package:silab_admin/features/add/domain/repositories/add_class_repository.dart';
import 'package:silab_admin/features/add/domain/repositories/add_subject_repository.dart';
import 'package:silab_admin/features/add/domain/usecases/add_class_usecase.dart';
import 'package:silab_admin/features/add/domain/usecases/add_subject_usecase.dart';
import 'package:silab_admin/features/add/presentation/bloc/add_class/add_class_bloc.dart';
import 'package:silab_admin/features/add/presentation/bloc/add_subject/add_subject_bloc.dart';
import 'package:silab_admin/features/authentication/data/data_sources/local/authentication_data_source.dart';
import 'package:silab_admin/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab_admin/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:silab_admin/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:silab_admin/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:silab_admin/features/authentication/domain/usecases/user_login_usecase.dart';
import 'package:silab_admin/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:silab_admin/features/classes/data/datasources/class_api_service.dart';
import 'package:silab_admin/features/classes/data/repositories/class_respository_impl.dart';
import 'package:silab_admin/features/classes/domain/repositories/class_repository.dart';
import 'package:silab_admin/features/classes/domain/usecases/get_all_classes_usecase.dart';
import 'package:silab_admin/features/classes/presentation/bloc/classes_bloc.dart';
import 'package:silab_admin/features/details/data/data_source/class_detail_api_service.dart';
import 'package:silab_admin/features/details/data/repositories/class_detail_repository_impl.dart';
import 'package:silab_admin/features/details/domain/repositories/class_detail_repository.dart';
import 'package:silab_admin/features/details/domain/usecases/get_class_details_usecase.dart';
import 'package:silab_admin/features/details/domain/usecases/update_class_usecase.dart';
import 'package:silab_admin/features/details/presentation/bloc/class_detail/class_detail_bloc.dart';
import 'package:silab_admin/features/details/presentation/bloc/update_class/update_class_bloc.dart';
import 'package:silab_admin/features/subjects/data/data_sources/subject_api_service.dart';
import 'package:silab_admin/features/subjects/data/repositories/subject_repository_impl.dart';
import 'package:silab_admin/features/subjects/domain/repositories/subject_repository.dart';
import 'package:silab_admin/features/subjects/domain/usecases/get_all_subjects_usecase.dart';
import 'package:silab_admin/features/subjects/domain/usecases/get_subject_by_id_usecase.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/all_subjects/subject_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/subject_by_id/subject_by_id_bloc.dart';

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
  injector.registerSingleton<ClassApiService>(ClassApiService(injector()));
  injector.registerSingleton<SubjectApiService>(SubjectApiService(injector()));
  injector
      .registerSingleton<AddClassApiService>(AddClassApiService(injector()));
  injector.registerSingleton<AddSubjectApiService>(
      AddSubjectApiService(injector()));
  injector.registerSingleton<ClassDetailApiService>(
      ClassDetailApiService(injector()));

  // Repositories
  injector.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl(injector(), injector()));
  injector.registerSingleton<ClassRepository>(ClassRepositoryImpl(injector()));
  injector
      .registerSingleton<SubjectRepository>(SubjectRepositoryImpl(injector()));
  injector.registerSingleton<AddClassRepository>(
      AddClassRepositoryImpl(injector()));
  injector.registerSingleton<AddSubjectRepository>(
      AddSubjectRepositoryImpl(injector()));
  injector.registerSingleton<ClassDetailRepository>(
      ClassDetailRepositoryImpl(injector()));

  // Usecases
  injector.registerSingleton<UserLoginUseCase>(UserLoginUseCase(injector()));
  injector
      .registerSingleton<GetUserTokenUseCase>(GetUserTokenUseCase(injector()));
  injector.registerSingleton<GetAllClassesUseCase>(
      GetAllClassesUseCase(injector()));
  injector.registerSingleton<GetAllSubjectsUseCase>(
      GetAllSubjectsUseCase(injector()));
  injector.registerSingleton<AddClassUseCase>(AddClassUseCase(injector()));
  injector.registerSingleton<AddSubjectUseCase>(AddSubjectUseCase(injector()));
  injector.registerSingleton<GetClassDetailsUseCase>(
      GetClassDetailsUseCase(injector()));
  injector.registerSingleton<GetSubjectByIdUseCase>(
      GetSubjectByIdUseCase(injector()));
  injector
      .registerSingleton<UpdateClassUseCase>(UpdateClassUseCase(injector()));

  // BLOCS
  injector.registerFactory<LoginBloc>(() => LoginBloc(injector(), injector()));
  injector.registerFactory<ClassesBloc>(() => ClassesBloc(injector()));
  injector.registerFactory<SubjectBloc>(() => SubjectBloc(injector()));
  injector.registerFactory<AddClassBloc>(() => AddClassBloc(injector()));
  injector.registerFactory<AddSubjectBloc>(() => AddSubjectBloc(injector()));
  injector.registerFactory<ClassDetailBloc>(() => ClassDetailBloc(injector()));
  injector.registerFactory<SubjectByIdBloc>(() => SubjectByIdBloc(injector()));
  injector.registerFactory<UpdateClassBloc>(() => UpdateClassBloc(injector()));
}
