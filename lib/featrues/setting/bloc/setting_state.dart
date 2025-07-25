import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../db/user_model_hive.dart';

part 'setting_state.freezed.dart';

@freezed
sealed class SettingState with _$SettingState {
  const factory SettingState.initial() = Initial;
  const factory SettingState.loading() = Loading;
  const factory SettingState.loaded({
    required UserModelHive user,
    @Default(false) bool isPickingImage,
  }) = Loaded;
  const factory SettingState.error(String message) = Error;
  const factory SettingState.loggedOut() = LoggedOut;
}
