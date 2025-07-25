import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
sealed class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.nameChanged(String name) = NameChanged;
  const factory RegisterEvent.emailChanged(String email) = EmailChanged;
  const factory RegisterEvent.passwordChanged(String password) = PasswordChanged;
  const factory RegisterEvent.confirmPasswordChanged(String confirmPassword) = ConfirmPasswordChanged;
  const factory RegisterEvent.toggleObscurePassword() = ToggleObscurePassword;
  const factory RegisterEvent.toggleObscureConfirmPassword() = ToggleObscureConfirmPassword;
  const factory RegisterEvent.pickImage() = PickImage;
  const factory RegisterEvent.registerSubmitted() = RegisterSubmitted;
}
