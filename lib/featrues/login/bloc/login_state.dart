import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial({@Default(true) bool obscurePassword}) =
      LoginInitial;

  const factory LoginState.loading({@Default(true) bool obscurePassword}) =
      LoginLoading;

  const factory LoginState.success({@Default(true) bool obscurePassword}) =
      LoginSuccess;

  const factory LoginState.failure({
    required String errorMessage,
    @Default(true) bool obscurePassword,
  }) = LoginFailure;
}
