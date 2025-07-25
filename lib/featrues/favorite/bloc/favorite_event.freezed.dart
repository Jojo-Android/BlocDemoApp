// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(int productId) removeFavorite,
    required TResult Function() favoritesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(int productId)? removeFavorite,
    TResult? Function()? favoritesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(int productId)? removeFavorite,
    TResult Function()? favoritesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) loadFavorites,
    required TResult Function(RemoveFavorite value) removeFavorite,
    required TResult Function(FavoritesUpdated value) favoritesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFavorites value)? loadFavorites,
    TResult? Function(RemoveFavorite value)? removeFavorite,
    TResult? Function(FavoritesUpdated value)? favoritesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? loadFavorites,
    TResult Function(RemoveFavorite value)? removeFavorite,
    TResult Function(FavoritesUpdated value)? favoritesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFavoritesImplCopyWith<$Res> {
  factory _$$LoadFavoritesImplCopyWith(
          _$LoadFavoritesImpl value, $Res Function(_$LoadFavoritesImpl) then) =
      __$$LoadFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$LoadFavoritesImpl>
    implements _$$LoadFavoritesImplCopyWith<$Res> {
  __$$LoadFavoritesImplCopyWithImpl(
      _$LoadFavoritesImpl _value, $Res Function(_$LoadFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFavoritesImpl implements LoadFavorites {
  const _$LoadFavoritesImpl();

  @override
  String toString() {
    return 'FavoriteEvent.loadFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(int productId) removeFavorite,
    required TResult Function() favoritesUpdated,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(int productId)? removeFavorite,
    TResult? Function()? favoritesUpdated,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(int productId)? removeFavorite,
    TResult Function()? favoritesUpdated,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) loadFavorites,
    required TResult Function(RemoveFavorite value) removeFavorite,
    required TResult Function(FavoritesUpdated value) favoritesUpdated,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFavorites value)? loadFavorites,
    TResult? Function(RemoveFavorite value)? removeFavorite,
    TResult? Function(FavoritesUpdated value)? favoritesUpdated,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? loadFavorites,
    TResult Function(RemoveFavorite value)? removeFavorite,
    TResult Function(FavoritesUpdated value)? favoritesUpdated,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class LoadFavorites implements FavoriteEvent {
  const factory LoadFavorites() = _$LoadFavoritesImpl;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(_$RemoveFavoriteImpl value,
          $Res Function(_$RemoveFavoriteImpl) then) =
      __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
      _$RemoveFavoriteImpl _value, $Res Function(_$RemoveFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveFavoriteImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements RemoveFavorite {
  const _$RemoveFavoriteImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'FavoriteEvent.removeFavorite(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(int productId) removeFavorite,
    required TResult Function() favoritesUpdated,
  }) {
    return removeFavorite(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(int productId)? removeFavorite,
    TResult? Function()? favoritesUpdated,
  }) {
    return removeFavorite?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(int productId)? removeFavorite,
    TResult Function()? favoritesUpdated,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) loadFavorites,
    required TResult Function(RemoveFavorite value) removeFavorite,
    required TResult Function(FavoritesUpdated value) favoritesUpdated,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFavorites value)? loadFavorites,
    TResult? Function(RemoveFavorite value)? removeFavorite,
    TResult? Function(FavoritesUpdated value)? favoritesUpdated,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? loadFavorites,
    TResult Function(RemoveFavorite value)? removeFavorite,
    TResult Function(FavoritesUpdated value)? favoritesUpdated,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveFavorite implements FavoriteEvent {
  const factory RemoveFavorite(final int productId) = _$RemoveFavoriteImpl;

  int get productId;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesUpdatedImplCopyWith<$Res> {
  factory _$$FavoritesUpdatedImplCopyWith(_$FavoritesUpdatedImpl value,
          $Res Function(_$FavoritesUpdatedImpl) then) =
      __$$FavoritesUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesUpdatedImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$FavoritesUpdatedImpl>
    implements _$$FavoritesUpdatedImplCopyWith<$Res> {
  __$$FavoritesUpdatedImplCopyWithImpl(_$FavoritesUpdatedImpl _value,
      $Res Function(_$FavoritesUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoritesUpdatedImpl implements FavoritesUpdated {
  const _$FavoritesUpdatedImpl();

  @override
  String toString() {
    return 'FavoriteEvent.favoritesUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(int productId) removeFavorite,
    required TResult Function() favoritesUpdated,
  }) {
    return favoritesUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(int productId)? removeFavorite,
    TResult? Function()? favoritesUpdated,
  }) {
    return favoritesUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(int productId)? removeFavorite,
    TResult Function()? favoritesUpdated,
    required TResult orElse(),
  }) {
    if (favoritesUpdated != null) {
      return favoritesUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) loadFavorites,
    required TResult Function(RemoveFavorite value) removeFavorite,
    required TResult Function(FavoritesUpdated value) favoritesUpdated,
  }) {
    return favoritesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFavorites value)? loadFavorites,
    TResult? Function(RemoveFavorite value)? removeFavorite,
    TResult? Function(FavoritesUpdated value)? favoritesUpdated,
  }) {
    return favoritesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? loadFavorites,
    TResult Function(RemoveFavorite value)? removeFavorite,
    TResult Function(FavoritesUpdated value)? favoritesUpdated,
    required TResult orElse(),
  }) {
    if (favoritesUpdated != null) {
      return favoritesUpdated(this);
    }
    return orElse();
  }
}

abstract class FavoritesUpdated implements FavoriteEvent {
  const factory FavoritesUpdated() = _$FavoritesUpdatedImpl;
}
