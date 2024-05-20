import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab_admin/core/router/page_transition.dart';
import 'package:silab_admin/features/add/presentation/pages/add_page.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/features/authentication/presentation/pages/login_page.dart';
import 'package:silab_admin/features/classes/presentation/pages/home_page.dart';
import 'package:silab_admin/features/details/presentation/pages/detail_page.dart';
import 'package:silab_admin/scaffold_page.dart';
import 'package:silab_admin/splash_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHome = GlobalKey<NavigatorState>(debugLabel: "shellHome");
final _shellNavigatorFind = GlobalKey<NavigatorState>(debugLabel: "shellFind");
final _shellNavigatorProfile =
    GlobalKey<NavigatorState>(debugLabel: "shellProfile");

final GoRouter router = GoRouter(
  debugLogDiagnostics: AppConfig.shared.flavor == Flavor.dev ? true : false,
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const LoginPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldPage(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHome,
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                  path: ':id',
                  name: 'details',
                  pageBuilder: (context, state) => pageTransition<void>(
                    context: context,
                    state: state,
                    child: DetailPage(id: state.pathParameters['id']!),
                  ),
                )
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFind,
          routes: [
            GoRoute(
              path: '/find',
              name: 'find',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Scaffold(
                  body: Center(
                    child: Text('find'),
                  ),
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfile,
          routes: [
            GoRoute(
              path: '/profile',
              name: 'profile',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Scaffold(
                  body: Center(
                    child: Text('profile'),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
    GoRoute(
      path: '/add',
      name: 'add',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const AddPage(),
    ),
  ],
);
