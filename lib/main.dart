import 'package:bloc_demo_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants/hive_boxes.dart';
import 'cubit/locale/locale_cubit.dart';
import 'db/product_model_hive.dart';
import 'db/user_model_hive.dart';
import 'l10n/app_localizations.dart';
import 'routes/router.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(UserModelHiveAdapter());
  Hive.registerAdapter(ProductModelHiveAdapter());

  await Future.wait([
    Hive.openBox<UserModelHive>(HiveBoxes.user),
    Hive.openBox<ProductModelHive>(HiveBoxes.favoriteProducts),
    Hive.openBox<String>(HiveBoxes.authBox),
  ]);

  await setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = GetIt.I<LocaleCubit>();

    return BlocProvider.value(
      value: localeCubit,
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp.router(
            locale: locale,
            onGenerateTitle: (context) =>
                AppLocalizations.of(context)!.appTitle,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              if (deviceLocale != null &&
                  supportedLocales.contains(deviceLocale)) {
                return deviceLocale;
              }
              return supportedLocales.first;
            },
            theme: AppTheme.shoppingAppTheme,
            debugShowCheckedModeBanner: false,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
