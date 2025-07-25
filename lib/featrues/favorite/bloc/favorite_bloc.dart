import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:hive/hive.dart';

import '../../../cubit/user/user_cubit.dart';
import '../../../cubit/user/user_state.dart';
import '../../../db/product_model_hive.dart';
import '../../../service_locator.dart';
import 'favorite_event.dart';
import 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final Box<ProductModelHive> _favoriteBox;
  final UserCubit _userCubit;

  late final StreamSubscription<BoxEvent> _favoritesSubscription;
  late final StreamSubscription _userCubitSubscription;

  FavoriteBloc({
    required Box<ProductModelHive> favoriteBox,
    required UserCubit userCubit,
  }) : _favoriteBox = favoriteBox,
       _userCubit = userCubit,
       super(const FavoriteState()) {
    on<LoadFavorites>(_onLoadFavorites);
    on<RemoveFavorite>(_onRemoveFavorite);
    on<FavoritesUpdated>(_onFavoritesUpdated);

    _favoritesSubscription = _favoriteBox.watch().listen((event) {
      add(const FavoriteEvent.favoritesUpdated());
    });

    _userCubitSubscription = _userCubit.stream.listen((_) {
      add(const LoadFavorites());
    });

    add(const LoadFavorites());
  }

  Future<void> _onLoadFavorites(
    LoadFavorites event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(state.copyWith(status: FavoriteStatus.loading));
    try {
      final userState = _userCubit.state;
      if (userState is! Loaded) {
        emit(state.copyWith(status: FavoriteStatus.success, favorites: []));
        return;
      }
      final user = userState.user;
      final userFavorites = _favoriteBox.values
          .where((item) => item.userEmail == user.email)
          .toList();
      emit(
        state.copyWith(
          status: FavoriteStatus.success,
          favorites: userFavorites,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FavoriteStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onRemoveFavorite(
    RemoveFavorite event,
    Emitter<FavoriteState> emit,
  ) async {
    if (state.removingProductId != null) return;

    emit(state.copyWith(removingProductId: event.productId));

    try {
      final userState = _userCubit.state;
      if (userState is Loaded) {
        final user = userState.user;
        final targetKey = _favoriteBox.keys.firstWhereOrNull((key) {
          final item = _favoriteBox.get(key);
          return item?.userEmail == user.email && item?.id == event.productId;
        });
        if (targetKey != null) {
          await _favoriteBox.delete(targetKey);
        }
      }
    } catch (_) {
      // log error or emit failure state if needed
    }

    emit(state.copyWith(removingProductId: null));
  }

  void _onFavoritesUpdated(
    FavoritesUpdated event,
    Emitter<FavoriteState> emit,
  ) {
    add(const LoadFavorites());
  }

  @override
  Future<void> close() {
    _favoritesSubscription.cancel();
    _userCubitSubscription.cancel();
    return super.close();
  }
}
