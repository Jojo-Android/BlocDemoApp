import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../db/product_model_hive.dart';

part 'favorite_state.freezed.dart';

enum FavoriteStatus { initial, loading, success, failure }

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    @Default([]) List<ProductModelHive> favorites,
    int? removingProductId,
    String? errorMessage,
  }) = _FavoriteState;
}
