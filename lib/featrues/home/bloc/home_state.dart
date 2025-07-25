import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/product_model.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.error(String message) = Error;
  const factory HomeState.data({
    required List<ProductModel> products,
    required Set<int> favoriteIds,
    required Set<int> loadingFavoriteIds,
    String? snackMessage,
    @Default(false) bool isErrorSnack,
  }) = Data;
}
