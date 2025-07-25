import 'package:bloc_demo_app/Constants/hive_boxes.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'cubit/auth/auth_cubit.dart';
import 'cubit/locale/locale_cubit.dart';
import 'cubit/user/user_cubit.dart';
import 'db/product_model_hive.dart';
import 'db/user_model_hive.dart';
import 'featrues/favorite/bloc/favorite_bloc.dart';
import 'featrues/login/bloc/login_bloc.dart';
import 'featrues/setting/bloc/setting_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // สมมติว่าเปิด Hive box ไว้ก่อนเรียกฟังก์ชันนี้แล้ว

  // เปิด UserBox
  final userBox = Hive.box<UserModelHive>(HiveBoxes.user);
  final authBox = Hive.box<String>(HiveBoxes.authBox);
  final favoritesBox = Hive.box<ProductModelHive>(HiveBoxes.favoriteProducts);

  // ลงทะเบียน AuthSessionCubit ก่อน (ลงทะเบียนครั้งเดียว)
  if (!getIt.isRegistered<AuthSessionCubit>()) {
    getIt.registerLazySingleton<AuthSessionCubit>(
      () => AuthSessionCubit(authBox),
    );
  }

  // ลงทะเบียน UserCubit โดย Inject AuthSessionCubit และ userBox ผ่าน constructor
  if (!getIt.isRegistered<UserCubit>()) {
    getIt.registerLazySingleton<UserCubit>(
      () => UserCubit(getIt<AuthSessionCubit>(), userBox),
    );
  }

  // ลงทะเบียน FavoriteBloc เป็น factory เพราะอาจสร้างหลาย instance ได้
  if (!getIt.isRegistered<FavoriteBloc>()) {
    getIt.registerFactory<FavoriteBloc>(
      () => FavoriteBloc(
        favoriteBox: favoritesBox,
        userCubit: getIt<UserCubit>(),
      ),
    );
  }

  // ลงทะเบียน SettingBloc เป็น factory เช่นกัน
  if (!getIt.isRegistered<SettingBloc>()) {
    getIt.registerFactory<SettingBloc>(
      () => SettingBloc(userCubit: getIt<UserCubit>()),
    );
  }

  if (!getIt.isRegistered<LoginBloc>()) {
    getIt.registerFactory<LoginBloc>(() => LoginBloc(userBox));
  }

  getIt.registerLazySingleton<LocaleCubit>(() => LocaleCubit());
}
