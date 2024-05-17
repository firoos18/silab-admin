import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/router/router.dart';
import 'package:silab_admin/features/add/presentation/bloc/add_class/add_class_bloc.dart';
import 'package:silab_admin/features/add/presentation/bloc/add_subject/add_subject_bloc.dart';
import 'package:silab_admin/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:silab_admin/features/classes/presentation/bloc/classes_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/subject_bloc.dart';
import 'package:silab_admin/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  AppConfig.create(
    appName: "SILAB Admin Dev",
    baseUrl: "https://silab-dev.vercel.app",
    flavor: Flavor.dev,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (_) => injector()),
        BlocProvider<ClassesBloc>(create: (_) => injector()),
        BlocProvider<SubjectBloc>(create: (_) => injector()),
        BlocProvider<AddClassBloc>(create: (_) => injector()),
        BlocProvider<AddSubjectBloc>(create: (_) => injector()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
