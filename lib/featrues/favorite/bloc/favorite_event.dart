import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_event.freezed.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.loadFavorites() = LoadFavorites;
  const factory FavoriteEvent.removeFavorite(int productId) = RemoveFavorite;
  const factory FavoriteEvent.favoritesUpdated() = FavoritesUpdated;
}
