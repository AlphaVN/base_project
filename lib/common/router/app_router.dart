import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/app/auth_cubit.dart';
import 'package:flutter_alphavn_base/common/constant/screen_enum.dart';
import 'package:flutter_alphavn_base/common/router/go_router_refresh_stream.dart';
import 'package:flutter_alphavn_base/di/injection.dart';
import 'package:flutter_alphavn_base/extension/app_screen_extension.dart';
import 'package:flutter_alphavn_base/screen/home_screen/home_screen.dart';
import 'package:flutter_alphavn_base/screen/login_screen/login_cubit.dart';
import 'package:flutter_alphavn_base/screen/login_screen/login_screen.dart';
import 'package:flutter_alphavn_base/screen/not_found_screen/not_found_screen.dart';
import 'package:flutter_alphavn_base/screen/register_screen/register_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final _myRouter = GoRouter(
    routes: [
      GoRoute(
        path: ScreenEnum.home.screenPath,
        name: ScreenEnum.home.screenName,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: ScreenEnum.register.screenPath,
        name: ScreenEnum.register.screenName,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: ScreenEnum.login.screenPath,
        name: ScreenEnum.login.screenName,
        builder: (context, state) => BlocProvider(
          create: (_) => LoginCubit(),
          child: const LoginScreen(),
        ),
      ),
    ],
    initialLocation: ScreenEnum.login.screenPath,
    navigatorKey: _rootNavigatorKey,
    restorationScopeId: 'router',
    errorBuilder: (context, state) {
      print(">>>errorBuilder ${state.error}");
      return const NotFoundScreen();
    },
    refreshListenable: GoRouterRefreshStream(injector<AuthCubit>().stream),
    redirect: (context, state) {
      final isAuthenticated = injector<AuthCubit>().state.isAuthenticated;
      if (!isAuthenticated) {
        return state.namedLocation(ScreenEnum.login.screenName);
      } else {
        return null;
      }
    },
  );

  static GoRouter get router => _myRouter;
}
