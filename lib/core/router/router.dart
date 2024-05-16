import 'package:go_router/go_router.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/features/authentication/presentation/pages/login_page.dart';
import 'package:silab_admin/features/classes/presentation/pages/home_page.dart';
import 'package:silab_admin/splash_screen.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: AppConfig.shared.flavor == Flavor.dev ? true : false,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
