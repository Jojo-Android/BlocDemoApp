// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductModel product) toggleFavorite,
    required TResult Function() retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductModel product)? toggleFavorite,
    TResult? Function()? retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductModel product)? toggleFavorite,
    TResult Function()? retry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadProducts value) loadProducts,
    required TResult Function(HomeToggleFavorite value) toggleFavorite,
    required TResult Function(HomeRetry value) retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadProducts value)? loadProducts,
    TResult? Function(HomeToggleFavorite value)? toggleFavorite,
    TResult? Function(HomeRetry value)? retry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadProducts value)? loadProducts,
    TResult Function(HomeToggleFavorite value)? toggleFavorite,
    TResult Function(HomeRetry value)? retry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeLoadProductsImplCopyWith<$Res> {
  factory _$$HomeLoadProductsImplCopyWith(_$HomeLoadProductsImpl value,
          $Res Function(_$HomeLoadProductsImpl) then) =
      __$$HomeLoadProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadProductsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeLoadProductsImpl>
    implements _$$HomeLoadProductsImplCopyWith<$Res> {
  __$$HomeLoadProductsImplCopyWithImpl(_$HomeLoadProductsImpl _value,
      $Res Function(_$HomeLoadProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeLoadProductsImpl implements HomeLoadProducts {
  const _$HomeLoadProductsImpl();

  @override
  String toString() {
    return 'HomeEvent.loadProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductModel product) toggleFavorite,
    required TResult Function() retry,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductModel product)? toggleFavorite,
    TResult? Function()? retry,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductModel product)? toggleFavorite,
    TResult Function()? retry,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadProducts value) loadProducts,
    required TResult Function(HomeToggleFavorite value) toggleFavorite,
    required TResult Function(HomeRetry value) retry,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadProducts value)? loadProducts,
    TResult? Function(HomeToggleFavorite value)? toggleFavorite,
    TResult? Function(HomeRetry value)? retry,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadProducts value)? loadProducts,
    TResult Function(HomeToggleFavorite value)? toggleFavorite,
    TResult Function(HomeRetry value)? retry,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class HomeLoadProducts implements HomeEvent {
  const factory HomeLoadProducts() = _$HomeLoadProductsImpl;
}

/// @nodoc
abstract class _$$HomeToggleFavoriteImplCopyWith<$Res> {
  factory _$$HomeToggleFavoriteImplCopyWith(_$HomeToggleFavoriteImpl value,
          $Res Function(_$HomeToggleFavoriteImpl) then) =
      __$$HomeToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$HomeToggleFavoriteImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeToggleFavoriteImpl>
    implements _$$HomeToggleFavoriteImplCopyWith<$Res> {
  __$$HomeToggleFavoriteImplCopyWithImpl(_$HomeToggleFavoriteImpl _value,
      $Res Function(_$HomeToggleFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$HomeToggleFavoriteImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$HomeToggleFavoriteImpl implements HomeToggleFavorite {
  const _$HomeToggleFavoriteImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'HomeEvent.toggleFavorite(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeToggleFavoriteImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeToggleFavoriteImplCopyWith<_$HomeToggleFavoriteImpl> get copyWith =>
      __$$HomeToggleFavoriteImplCopyWithImpl<_$HomeToggleFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductModel product) toggleFavorite,
    required TResult Function() retry,
  }) {
    return toggleFavorite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductModel product)? toggleFavorite,
    TResult? Function()? retry,
  }) {
    return toggleFavorite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductModel product)? toggleFavorite,
    TResult Function()? retry,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadProducts value) loadProducts,
    required TResult Function(HomeToggleFavorite value) toggleFavorite,
    required TResult Function(HomeRetry value) retry,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadProducts value)? loadProducts,
    TResult? Function(HomeToggleFavorite value)? toggleFavorite,
    TResult? Function(HomeRetry value)? retry,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadProducts value)? loadProducts,
    TResult Function(HomeToggleFavorite value)? toggleFavorite,
    TResult Function(HomeRetry value)? retry,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class HomeToggleFavorite implements HomeEvent {
  const factory HomeToggleFavorite(final ProductModel product) =
      _$HomeToggleFavoriteImpl;

  ProductModel get product;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeToggleFavoriteImplCopyWith<_$HomeToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeRetryImplCopyWith<$Res> {
  factory _$$HomeRetryImplCopyWith(
          _$HomeRetryImpl value, $Res Function(_$HomeRetryImpl) then) =
      __$$HomeRetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeRetryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeRetryImpl>
    implements _$$HomeRetryImplCopyWith<$Res> {
  __$$HomeRetryImplCopyWithImpl(
      _$HomeRetryImpl _value, $Res Function(_$HomeRetryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeRetryImpl implements HomeRetry {
  const _$HomeRetryImpl();

  @override
  String toString() {
    return 'HomeEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeRetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function(ProductModel product) toggleFavorite,
    required TResult Function() retry,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function(ProductModel product)? toggleFavorite,
    TResult? Function()? retry,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function(ProductModel product)? toggleFavorite,
    TResult Function()? retry,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadProducts value) loadProducts,
    required TResult Function(HomeToggleFavorite value) toggleFavorite,
    required TResult Function(HomeRetry value) retry,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadProducts value)? loadProducts,
    TResult? Function(HomeToggleFavorite value)? toggleFavorite,
    TResult? Function(HomeRetry value)? retry,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadProducts value)? loadProducts,
    TResult Function(HomeToggleFavorite value)? toggleFavorite,
    TResult Function(HomeRetry value)? retry,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class HomeRetry implements HomeEvent {
  const factory HomeRetry() = _$HomeRetryImpl;
}
