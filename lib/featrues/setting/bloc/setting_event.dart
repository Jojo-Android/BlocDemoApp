import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.freezed.dart';

@freezed
sealed class SettingEvent with _$SettingEvent {
  const factory SettingEvent.loadUser() = LoadUser;
  const factory SettingEvent.pickImage() = PickImage;
  const factory SettingEvent.logout() = Logout;
  const factory SettingEvent.changeLanguage(String localeCode) = ChangeLanguage;
}
