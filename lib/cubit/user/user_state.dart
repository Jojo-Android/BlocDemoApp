import 'package:freezed_annotation/freezed_annotation.dart';
import '../../db/user_model_hive.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState.initial() = Initial;
  const factory UserState.loading() = Loading;
  const factory UserState.loaded(UserModelHive user) = Loaded;
  const factory UserState.loggedOut() = LoggedOut;
  const factory UserState.error(String message) = Error;
}
