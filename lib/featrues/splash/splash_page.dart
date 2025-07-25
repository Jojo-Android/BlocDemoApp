import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Constants/dimensions.dart';
import '../../cubit/user/user_cubit.dart';
import '../../cubit/user/user_state.dart';
import '../../l10n/app_localizations.dart';
import '../../routes/app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: color.surface,
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            state.when(
              initial: () {},
              loading: () {},
              loaded: (user) {
                debugPrint('Navigate to main');
                if (context.mounted) context.goNamed(AppRoutes.main);
              },
              loggedOut: () {
                debugPrint('Navigate to login');
                if (context.mounted) context.goNamed(AppRoutes.login);
              },
              error: (message) {
                debugPrint('Navigate to login with error: $message');
                if (context.mounted) context.goNamed(AppRoutes.login);
              },
            );
          });

          return Center(
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeIn,
              tween: Tween(begin: 0, end: 1),
              builder: (context, value, child) {
                return Opacity(opacity: value, child: child);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Semantics(
                    label: local.appName,
                    child: Icon(
                      Icons.shopping_bag,
                      size: Dimensions.splashIconSize,
                      color: color.primary,
                    ),
                  ),
                  const SizedBox(height: Dimensions.splashSpacingSmall),
                  Text(
                    local.appName,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: color.primary,
                    ),
                  ),
                  const SizedBox(height: Dimensions.splashSpacingLarge),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
