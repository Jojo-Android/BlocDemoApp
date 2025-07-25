// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function() pickImage,
    required TResult Function() logout,
    required TResult Function(String localeCode) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function()? pickImage,
    TResult? Function()? logout,
    TResult? Function(String localeCode)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function()? pickImage,
    TResult Function()? logout,
    TResult Function(String localeCode)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(Logout value) logout,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(Logout value)? logout,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(PickImage value)? pickImage,
    TResult Function(Logout value)? logout,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadUserImplCopyWith<$Res> {
  factory _$$LoadUserImplCopyWith(
          _$LoadUserImpl value, $Res Function(_$LoadUserImpl) then) =
      __$$LoadUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$LoadUserImpl>
    implements _$$LoadUserImplCopyWith<$Res> {
  __$$LoadUserImplCopyWithImpl(
      _$LoadUserImpl _value, $Res Function(_$LoadUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUserImpl implements LoadUser {
  const _$LoadUserImpl();

  @override
  String toString() {
    return 'SettingEvent.loadUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function() pickImage,
    required TResult Function() logout,
    required TResult Function(String localeCode) changeLanguage,
  }) {
    return loadUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function()? pickImage,
    TResult? Function()? logout,
    TResult? Function(String localeCode)? changeLanguage,
  }) {
    return loadUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function()? pickImage,
    TResult Function()? logout,
    TResult Function(String localeCode)? changeLanguage,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(Logout value) logout,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(Logout value)? logout,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(PickImage value)? pickImage,
    TResult Function(Logout value)? logout,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class LoadUser implements SettingEvent {
  const factory LoadUser() = _$LoadUserImpl;
}

/// @nodoc
abstract class _$$PickImageImplCopyWith<$Res> {
  factory _$$PickImageImplCopyWith(
          _$PickImageImpl value, $Res Function(_$PickImageImpl) then) =
      __$$PickImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$PickImageImpl>
    implements _$$PickImageImplCopyWith<$Res> {
  __$$PickImageImplCopyWithImpl(
      _$PickImageImpl _value, $Res Function(_$PickImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickImageImpl implements PickImage {
  const _$PickImageImpl();

  @override
  String toString() {
    return 'SettingEvent.pickImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function() pickImage,
    required TResult Function() logout,
    required TResult Function(String localeCode) changeLanguage,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function()? pickImage,
    TResult? Function()? logout,
    TResult? Function(String localeCode)? changeLanguage,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function()? pickImage,
    TResult Function()? logout,
    TResult Function(String localeCode)? changeLanguage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(Logout value) logout,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(Logout value)? logout,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(PickImage value)? pickImage,
    TResult Function(Logout value)? logout,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImage implements SettingEvent {
  const factory PickImage() = _$PickImageImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'SettingEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function() pickImage,
    required TResult Function() logout,
    required TResult Function(String localeCode) changeLanguage,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function()? pickImage,
    TResult? Function()? logout,
    TResult? Function(String localeCode)? changeLanguage,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function()? pickImage,
    TResult Function()? logout,
    TResult Function(String localeCode)? changeLanguage,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(Logout value) logout,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(Logout value)? logout,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(PickImage value)? pickImage,
    TResult Function(Logout value)? logout,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements SettingEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$ChangeLanguageImplCopyWith<$Res> {
  factory _$$ChangeLanguageImplCopyWith(_$ChangeLanguageImpl value,
          $Res Function(_$ChangeLanguageImpl) then) =
      __$$ChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String localeCode});
}

/// @nodoc
class __$$ChangeLanguageImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$ChangeLanguageImpl>
    implements _$$ChangeLanguageImplCopyWith<$Res> {
  __$$ChangeLanguageImplCopyWithImpl(
      _$ChangeLanguageImpl _value, $Res Function(_$ChangeLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeCode = null,
  }) {
    return _then(_$ChangeLanguageImpl(
      null == localeCode
          ? _value.localeCode
          : localeCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageImpl implements ChangeLanguage {
  const _$ChangeLanguageImpl(this.localeCode);

  @override
  final String localeCode;

  @override
  String toString() {
    return 'SettingEvent.changeLanguage(localeCode: $localeCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageImpl &&
            (identical(other.localeCode, localeCode) ||
                other.localeCode == localeCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localeCode);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      __$$ChangeLanguageImplCopyWithImpl<_$ChangeLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function() pickImage,
    required TResult Function() logout,
    required TResult Function(String localeCode) changeLanguage,
  }) {
    return changeLanguage(localeCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function()? pickImage,
    TResult? Function()? logout,
    TResult? Function(String localeCode)? changeLanguage,
  }) {
    return changeLanguage?.call(localeCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function()? pickImage,
    TResult Function()? logout,
    TResult Function(String localeCode)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(localeCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(Logout value) logout,
    required TResult Function(ChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(Logout value)? logout,
    TResult? Function(ChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(PickImage value)? pickImage,
    TResult Function(Logout value)? logout,
    TResult Function(ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguage implements SettingEvent {
  const factory ChangeLanguage(final String localeCode) = _$ChangeLanguageImpl;

  String get localeCode;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
