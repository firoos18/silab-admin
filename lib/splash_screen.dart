import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/core/router/router.dart';
import 'package:silab_admin/features/authentication/presentation/bloc/login_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<LoginBloc>().add(ApplicationOpened());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state is LoginLoaded) {
          Future.delayed(const Duration(seconds: 2)).then(
            (value) => router.go('/home'),
          );
        } else {
          Future.delayed(const Duration(seconds: 2)).then(
            (value) => router.go('/login'),
          );
        }
      },
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: FlutterLogo(
              size: 150,
              style: FlutterLogoStyle.markOnly,
            ),
          ),
        );
      },
    );
  }
}
