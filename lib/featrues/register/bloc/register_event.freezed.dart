// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RegisterEvent {
  const factory NameChanged(final String name) = _$NameChangedImpl;

  String get name;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements RegisterEvent {
  const factory ConfirmPasswordChanged(final String confirmPassword) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPassword;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleObscurePasswordImplCopyWith<$Res> {
  factory _$$ToggleObscurePasswordImplCopyWith(
          _$ToggleObscurePasswordImpl value,
          $Res Function(_$ToggleObscurePasswordImpl) then) =
      __$$ToggleObscurePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleObscurePasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ToggleObscurePasswordImpl>
    implements _$$ToggleObscurePasswordImplCopyWith<$Res> {
  __$$ToggleObscurePasswordImplCopyWithImpl(_$ToggleObscurePasswordImpl _value,
      $Res Function(_$ToggleObscurePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleObscurePasswordImpl implements ToggleObscurePassword {
  const _$ToggleObscurePasswordImpl();

  @override
  String toString() {
    return 'RegisterEvent.toggleObscurePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleObscurePasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return toggleObscurePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return toggleObscurePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (toggleObscurePassword != null) {
      return toggleObscurePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return toggleObscurePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return toggleObscurePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (toggleObscurePassword != null) {
      return toggleObscurePassword(this);
    }
    return orElse();
  }
}

abstract class ToggleObscurePassword implements RegisterEvent {
  const factory ToggleObscurePassword() = _$ToggleObscurePasswordImpl;
}

/// @nodoc
abstract class _$$ToggleObscureConfirmPasswordImplCopyWith<$Res> {
  factory _$$ToggleObscureConfirmPasswordImplCopyWith(
          _$ToggleObscureConfirmPasswordImpl value,
          $Res Function(_$ToggleObscureConfirmPasswordImpl) then) =
      __$$ToggleObscureConfirmPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleObscureConfirmPasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res,
        _$ToggleObscureConfirmPasswordImpl>
    implements _$$ToggleObscureConfirmPasswordImplCopyWith<$Res> {
  __$$ToggleObscureConfirmPasswordImplCopyWithImpl(
      _$ToggleObscureConfirmPasswordImpl _value,
      $Res Function(_$ToggleObscureConfirmPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleObscureConfirmPasswordImpl
    implements ToggleObscureConfirmPassword {
  const _$ToggleObscureConfirmPasswordImpl();

  @override
  String toString() {
    return 'RegisterEvent.toggleObscureConfirmPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleObscureConfirmPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return toggleObscureConfirmPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return toggleObscureConfirmPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (toggleObscureConfirmPassword != null) {
      return toggleObscureConfirmPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return toggleObscureConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return toggleObscureConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (toggleObscureConfirmPassword != null) {
      return toggleObscureConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class ToggleObscureConfirmPassword implements RegisterEvent {
  const factory ToggleObscureConfirmPassword() =
      _$ToggleObscureConfirmPasswordImpl;
}

/// @nodoc
abstract class _$$PickImageImplCopyWith<$Res> {
  factory _$$PickImageImplCopyWith(
          _$PickImageImpl value, $Res Function(_$PickImageImpl) then) =
      __$$PickImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PickImageImpl>
    implements _$$PickImageImplCopyWith<$Res> {
  __$$PickImageImplCopyWithImpl(
      _$PickImageImpl _value, $Res Function(_$PickImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickImageImpl implements PickImage {
  const _$PickImageImpl();

  @override
  String toString() {
    return 'RegisterEvent.pickImage()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImage implements RegisterEvent {
  const factory PickImage() = _$PickImageImpl;
}

/// @nodoc
abstract class _$$RegisterSubmittedImplCopyWith<$Res> {
  factory _$$RegisterSubmittedImplCopyWith(_$RegisterSubmittedImpl value,
          $Res Function(_$RegisterSubmittedImpl) then) =
      __$$RegisterSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSubmittedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterSubmittedImpl>
    implements _$$RegisterSubmittedImplCopyWith<$Res> {
  __$$RegisterSubmittedImplCopyWithImpl(_$RegisterSubmittedImpl _value,
      $Res Function(_$RegisterSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterSubmittedImpl implements RegisterSubmitted {
  const _$RegisterSubmittedImpl();

  @override
  String toString() {
    return 'RegisterEvent.registerSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() toggleObscurePassword,
    required TResult Function() toggleObscureConfirmPassword,
    required TResult Function() pickImage,
    required TResult Function() registerSubmitted,
  }) {
    return registerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? toggleObscurePassword,
    TResult? Function()? toggleObscureConfirmPassword,
    TResult? Function()? pickImage,
    TResult? Function()? registerSubmitted,
  }) {
    return registerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? toggleObscurePassword,
    TResult Function()? toggleObscureConfirmPassword,
    TResult Function()? pickImage,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ToggleObscurePassword value)
        toggleObscurePassword,
    required TResult Function(ToggleObscureConfirmPassword value)
        toggleObscureConfirmPassword,
    required TResult Function(PickImage value) pickImage,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult? Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult? Function(PickImage value)? pickImage,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ToggleObscurePassword value)? toggleObscurePassword,
    TResult Function(ToggleObscureConfirmPassword value)?
        toggleObscureConfirmPassword,
    TResult Function(PickImage value)? pickImage,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class RegisterSubmitted implements RegisterEvent {
  const factory RegisterSubmitted() = _$RegisterSubmittedImpl;
}
