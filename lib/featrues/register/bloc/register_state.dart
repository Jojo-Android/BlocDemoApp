import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    String? imagePath,
    @Default(true) bool obscurePassword,
    @Default(true) bool obscureConfirm,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? errorMessage,
  }) = _RegisterState;

  const RegisterState._();

  bool get isFormValid =>
      (name?.isNotEmpty ?? false) &&
          (email?.isNotEmpty ?? false) &&
          (password?.isNotEmpty ?? false) &&
          (confirmPassword?.isNotEmpty ?? false) &&
          password == confirmPassword;
}
