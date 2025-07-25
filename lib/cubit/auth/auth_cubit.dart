import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../../Constants/hive_boxes.dart';

class AuthSessionCubit extends Cubit<String?> {
  static const _keyUserEmail = HiveBoxes.currentUserEmail;

  final Box<String> _sessionBox;

  AuthSessionCubit(this._sessionBox) : super(_sessionBox.get(_keyUserEmail)){
    debugPrint('AuthSessionCubit initialized with state: $state');
  }

  Future<void> saveUserEmail(String email) async {
    await _sessionBox.put(_keyUserEmail, email);
    emit(email);
  }

  String? get currentUserEmail => state;

  bool get isLoggedIn => state != null;

  Future<void> logout() async {
    await _sessionBox.delete(_keyUserEmail);
    emit(null);
  }
}
