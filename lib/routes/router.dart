import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/user/user_cubit.dart';
import '../featrues/login/bloc/login_bloc.dart';
import '../featrues/login/login_page.dart';
import '../featrues/main/main_page.dart';
import '../featrues/register/register_page.dart';
import '../featrues/splash/splash_page.dart';
import '../service_locator.dart';
import 'app_routes.dart';

final router = GoRouter(
  initialLocation: AppRoutes.splashPath,
  routes: [
    GoRoute(
      name: AppRoutes.splash,
      path: AppRoutes.splashPath,
      builder: (context, state) {
        return BlocProvider.value(
          value: getIt<UserCubit>(),  // ใช้ instance จาก getIt
          child: const SplashPage(),
        );
      },
    ),

    GoRoute(
      name: AppRoutes.login,
      path: AppRoutes.loginPath,
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<LoginBloc>(),
        child: const LoginPage(),
      ),
    ),
    GoRoute(
      name: AppRoutes.register,
      path: AppRoutes.registerPath,
      builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
      name: AppRoutes.main,
      path: AppRoutes.mainPath,
      builder: (context, state) => const MainPage(),
    ),
  ],
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text('404 - Page Not Found'))),
);
