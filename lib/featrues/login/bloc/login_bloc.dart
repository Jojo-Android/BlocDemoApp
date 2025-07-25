import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:crypto/crypto.dart';
import 'package:hive/hive.dart';

import '../../../cubit/auth/auth_cubit.dart';
import '../../../cubit/user/user_cubit.dart';
import '../../../service_locator.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Box _userBox;
  final AuthSessionCubit _authSessionCubit;
  final UserCubit _userCubit;


  LoginBloc(this._userBox)
      : _authSessionCubit = getIt<AuthSessionCubit>(),
        _userCubit = getIt<UserCubit>(),
        super(const LoginState.initial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  Future<void> _onLoginSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ) async {
    final obscure = state.whenOrNull(
      initial: (obscurePassword) => obscurePassword,
      loading: (obscurePassword) => obscurePassword,
      failure: (_, obscurePassword) => obscurePassword,
      success: (obscurePassword) => obscurePassword,
    ) ??
        true;

    emit(LoginState.loading(obscurePassword: obscure));

    await Future.delayed(const Duration(milliseconds: 500)); // simulate delay

    final storedUser = _userBox.get(event.email);

    if (storedUser != null &&
        storedUser.password == _hashPassword(event.password)) {
      _authSessionCubit.saveUserEmail(event.email);
      _userCubit.setCurrentUser(storedUser);

      emit(LoginState.success(obscurePassword: obscure));
    } else {
      emit(LoginState.failure(
        errorMessage: 'Invalid email or password',
        obscurePassword: obscure,
      ));
    }
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event,
      Emitter<LoginState> emit,
      ) {
    final obscure = state.whenOrNull(
      initial: (obscurePassword) => obscurePassword,
      loading: (obscurePassword) => obscurePassword,
      failure: (_, obscurePassword) => obscurePassword,
      success: (obscurePassword) => obscurePassword,
    ) ??
        true;

    emit(LoginState.initial(obscurePassword: !obscure));
  }

  String _hashPassword(String password) {
    return sha256.convert(utf8.encode(password)).toString();
  }
}
