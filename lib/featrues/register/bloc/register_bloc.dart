import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:crypto/crypto.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../../../db/user_model_hive.dart';
import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final Box<UserModelHive> userBox;
  final ImagePicker _picker = ImagePicker();

  RegisterBloc(this.userBox) : super(const RegisterState()) {
    on<RegisterEvent>(_onEvent);
  }

  Future<void> _onEvent(RegisterEvent event, Emitter<RegisterState> emit) async {
    await event.when(
      nameChanged: (name) {
        emit(state.copyWith(
          name: name.trim(),
          errorMessage: null,
          isSuccess: false,
        ));
      },
      emailChanged: (email) {
        emit(state.copyWith(
          email: email.trim().toLowerCase(),
          errorMessage: null,
          isSuccess: false,
        ));
      },
      passwordChanged: (password) {
        emit(state.copyWith(
          password: password,
          errorMessage: null,
          isSuccess: false,
        ));
      },
      confirmPasswordChanged: (confirmPassword) {
        emit(state.copyWith(
          confirmPassword: confirmPassword,
          errorMessage: null,
          isSuccess: false,
        ));
      },
      toggleObscurePassword: () {
        emit(state.copyWith(obscurePassword: !state.obscurePassword));
      },
      toggleObscureConfirmPassword: () {
        emit(state.copyWith(obscureConfirm: !state.obscureConfirm));
      },
      pickImage: () async {
        try {
          final picked = await _picker.pickImage(source: ImageSource.gallery);
          if (picked == null) return;

          final appDir = await getApplicationDocumentsDirectory();
          final fileName = '${DateTime.now().millisecondsSinceEpoch}.png';
          final saved = await File(picked.path).copy('${appDir.path}/$fileName');

          emit(state.copyWith(imagePath: saved.path, errorMessage: null, isSuccess: false));
        } catch (e) {
          emit(state.copyWith(errorMessage: 'Failed to pick image: $e'));
        }
      },
      registerSubmitted: () async {
        if (!state.isFormValid) {
          emit(state.copyWith(errorMessage: 'Please fill all fields correctly.'));
          return;
        }

        emit(state.copyWith(isSubmitting: true, errorMessage: null, isSuccess: false));

        try {
          final emailLower = state.email!.toLowerCase();
          final existingUser = userBox.values.any((u) => u.email == emailLower);
          if (existingUser) {
            emit(state.copyWith(
              isSubmitting: false,
              errorMessage: 'Email already in use.',
            ));
            return;
          }

          final user = UserModelHive(
            name: state.name!,
            email: emailLower,
            password: _hashPassword(state.password!),
            imagePath: state.imagePath,
          );
          await userBox.put(emailLower, user);

          emit(state.copyWith(isSubmitting: false, isSuccess: true));
        } catch (e) {
          emit(state.copyWith(isSubmitting: false, errorMessage: 'Failed to register: $e'));
        }
      },
    );
  }

  String _hashPassword(String raw) => sha256.convert(utf8.encode(raw)).toString();
}
