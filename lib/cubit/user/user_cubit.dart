import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_demo_app/cubit/user/user_state.dart';
import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../../db/user_model_hive.dart';
import '../auth/auth_cubit.dart';

class UserCubit extends Cubit<UserState> {
  final AuthSessionCubit _authSessionCubit;
  final Box<UserModelHive> _userBox;
  StreamSubscription? _userBoxSubscription;

  Box<UserModelHive> get userBox => _userBox;

  UserCubit(this._authSessionCubit, this._userBox)
    : super(const UserState.initial()) {
    _loadUser();
    _userBoxSubscription = _userBox.watch().listen(_onUserBoxChanged);
  }

  void _onUserBoxChanged(BoxEvent event) {
    if (event.value is! UserModelHive) return;

    final changedUser = event.value as UserModelHive;
    final currentEmail = _authSessionCubit.currentUserEmail;

    if (changedUser.email == currentEmail) {
      emit(UserState.loaded(changedUser));
    }
  }

  void setCurrentUser(UserModelHive user) {
    emit(UserState.loaded(user));
  }

  Future<void> _loadUser() async {
    debugPrint('UserCubit: loading user...');
    emit(const UserState.loading());
    try {
      final email = _authSessionCubit.currentUserEmail;
      debugPrint('UserCubit: current email = $email');
      if (email != null) {
        final user = _userBox.values.firstWhereOrNull((u) => u.email == email);
        if (user != null) {
          debugPrint('UserCubit: emit loaded');
          emit(UserState.loaded(user));
        } else {
          debugPrint('UserCubit: user not found, emit loggedOut');
          emit(const UserState.loggedOut());
        }
      } else {
        debugPrint('UserCubit: no current email, emit loggedOut');
        emit(const UserState.loggedOut());
      }
    } catch (e) {
      debugPrint('UserCubit: error $e');
      emit(UserState.error(e.toString()));
    }
  }


  Future<void> updateUser(UserModelHive updatedUser) async {
    final key = _userBox.keys.firstWhereOrNull(
      (k) => _userBox.get(k)?.email == updatedUser.email,
    );

    if (key != null) {
      await _userBox.put(key, updatedUser);
      emit(UserState.loaded(updatedUser));
    }
  }

  String _hashPassword(String password) {
    return sha256.convert(utf8.encode(password)).toString();
  }

  UserModelHive? get currentUser {
    final state = this.state;
    if (state is Loaded) {
      return state.user;
    }
    return null;
  }


  UserModelHive? findUserByCredential(String email, String password) {
    final hashed = _hashPassword(password);
    return _userBox.values.firstWhereOrNull(
      (user) => user.email == email && user.password == hashed,
    );
  }

  Future<void> logout() async {
    await _authSessionCubit.logout();
    emit(const UserState.loggedOut());
  }

  @override
  Future<void> close() {
    _userBoxSubscription?.cancel();
    return super.close();
  }
}
