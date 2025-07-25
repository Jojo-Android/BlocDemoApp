import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/product_model.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadProducts() = HomeLoadProducts;
  const factory HomeEvent.toggleFavorite(ProductModel product) = HomeToggleFavorite;
  const factory HomeEvent.retry() = HomeRetry;
}
