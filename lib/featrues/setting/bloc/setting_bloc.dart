import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../cubit/user/user_cubit.dart';
import 'setting_event.dart';
import 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final UserCubit userCubit;
  late final StreamSubscription userCubitSubscription;

  SettingBloc({required this.userCubit}) : super(const SettingState.initial()) {
    on<LoadUser>(_onLoadUser);
    on<PickImage>(_onPickImage);
    on<Logout>(_onLogout);
    on<ChangeLanguage>(_onChangeLanguage);

    add(const LoadUser());

    userCubitSubscription = userCubit.stream.listen((userState) {
      userState.whenOrNull(
        loaded: (user) => add(const LoadUser()),
        error: (_) => add(const LoadUser()),
        loggedOut: () => emit(const SettingState.loggedOut()),
      );
    });
  }

  @override
  Future<void> close() {
    userCubitSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onLoadUser(LoadUser event, Emitter<SettingState> emit) {
    final userState = userCubit.state;
    userState.when(
      initial: () => emit(const SettingState.loading()),
      loading: () => emit(const SettingState.loading()),
      loaded: (user) => emit(SettingState.loaded(user: user)),
      error: (message) => emit(SettingState.error(message)),
      loggedOut: () => emit(const SettingState.loggedOut()),
    );
  }

  Future<void> _onPickImage(PickImage event, Emitter<SettingState> emit) async {
    final currentState = state;
    await currentState.maybeWhen(
      loaded: (user, isPickingImage) async {
        if (isPickingImage) return;

        emit(SettingState.loaded(user: user, isPickingImage: true));

        try {
          final picker = ImagePicker();
          final picked = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 80,
          );

          if (picked == null) {
            emit(SettingState.loaded(user: user, isPickingImage: false));
            return;
          }

          final appDir = await getApplicationDocumentsDirectory();
          final newPath = path.join(
            appDir.path,
            '${DateTime.now().millisecondsSinceEpoch}${path.extension(picked.path)}',
          );

          final saved = await File(picked.path).copy(newPath);

          final updatedUser = user.copyWith(imagePath: saved.path);
          await userCubit.updateUser(updatedUser);

          emit(SettingState.loaded(user: updatedUser, isPickingImage: false));
        } catch (_) {
          emit(const SettingState.error('Failed to pick image'));
        }
      },
      orElse: () {},
    );
  }

  Future<void> _onLogout(Logout event, Emitter<SettingState> emit) async {
    await userCubit.logout();
    emit(const SettingState.loggedOut());
  }

  FutureOr<void> _onChangeLanguage(ChangeLanguage event, Emitter<SettingState> emit) {
  }
}
