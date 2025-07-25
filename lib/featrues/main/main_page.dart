import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/app_localizations.dart';
import '../favorite/favorite_page.dart';
import '../home/home_page.dart';
import '../setting/setting_page.dart';
import 'main_cubit.dart';
import 'main_state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final pages = const [HomePage(), FavoritePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (_) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return Scaffold(
            body: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: pages[state.currentIndex],
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.currentIndex,
              onTap: (index) => context.read<MainCubit>().changeIndex(index),
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_outlined),
                  activeIcon: const Icon(Icons.home),
                  label: local.homePageTitle,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite_border),
                  activeIcon: const Icon(Icons.favorite),
                  label: local.favoritePageTitle,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings_outlined),
                  activeIcon: const Icon(Icons.settings),
                  label: local.settingsPageTitle,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
