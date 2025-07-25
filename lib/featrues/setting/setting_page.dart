import 'dart:io';

import 'package:bloc_demo_app/l10n/app_localizations.dart';
import 'package:bloc_demo_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../db/user_model_hive.dart';
import '../../cubit/locale/locale_cubit.dart';
import 'bloc/setting_bloc.dart';
import 'bloc/setting_event.dart';
import 'bloc/setting_state.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingBloc settingBloc = GetIt.I<SettingBloc>();

    return BlocProvider.value(
      value: settingBloc,
      child: BlocConsumer<SettingBloc, SettingState>(
        listenWhen: (previous, current) =>
            current is Error || current is LoggedOut,
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is LoggedOut) {
            context.go(AppRoutes.loginPath);
          }
        },
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
            error: (message) => Scaffold(body: Center(child: Text(message))),
            loaded: (user, isPickingImage) =>
                _buildLoaded(context, user, isPickingImage),
            loggedOut: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildLoaded(
    BuildContext context,
    UserModelHive user,
    bool isPickingImage,
  ) {
    final theme = Theme.of(context);
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: theme.colorScheme.primary,
            expandedHeight: 200,
            pinned: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                user.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(color: theme.colorScheme.primary),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: isPickingImage
                          ? null
                          : () {
                              context.read<SettingBloc>().add(
                                const SettingEvent.pickImage(),
                              );
                            },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: user.imagePath != null
                            ? FileImage(File(user.imagePath!))
                            : null,
                        child: user.imagePath == null
                            ? const Icon(Icons.person, size: 60)
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildListTile(
                  context,
                  icon: Icons.language,
                  iconColor: theme.colorScheme.primary,
                  title: local.changeLanguage,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    _showChangeLanguageDialog(context);
                  },
                  tileColor: theme.colorScheme.primaryContainer.withOpacity(
                    0.1,
                  ),
                ),
                const SizedBox(height: 12),
                _buildListTile(
                  context,
                  icon: Icons.logout,
                  iconColor: theme.colorScheme.error,
                  title: local.logout,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    context.read<SettingBloc>().add(
                      const SettingEvent.logout(),
                    );
                  },
                  tileColor: theme.colorScheme.errorContainer.withOpacity(0.1),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    required Widget trailing,
    required VoidCallback onTap,
    Color? tileColor,
  }) {
    final theme = Theme.of(context);

    return Material(
      color: tileColor ?? Colors.transparent,
      borderRadius: BorderRadius.circular(12),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: Icon(icon, color: iconColor),
        title: Text(title, style: theme.textTheme.titleMedium),
        trailing: trailing,
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }

  void _showChangeLanguageDialog(BuildContext context) {
    final localeCubit = GetIt.I<LocaleCubit>();
    final selectedLocale = ValueNotifier<String>(
      localeCubit.state.languageCode,
    );
    final local = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(local.changeLanguage),
        content: ValueListenableBuilder<String>(
          valueListenable: selectedLocale,
          builder: (context, value, _) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<String>(
                  title: const Text('English'),
                  value: 'en',
                  groupValue: value,
                  onChanged: (val) => selectedLocale.value = val ?? 'en',
                ),
                RadioListTile<String>(
                  title: const Text('ไทย'),
                  value: 'th',
                  groupValue: value,
                  onChanged: (val) => selectedLocale.value = val ?? 'th',
                ),
              ],
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(local.close),
          ),
          TextButton(
            onPressed: () {
              localeCubit.changeLocale(selectedLocale.value);
              Navigator.of(context).pop();
            },
            child: Text(local.confirm),
          ),
        ],
      ),
    );
  }
}
