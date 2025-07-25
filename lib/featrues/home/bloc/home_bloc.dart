import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import '../../../Constants/api_service.dart';
import '../../../db/product_model_hive.dart';
import '../../../model/product_model.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Box<ProductModelHive> favoritesBox;
  final String currentUserEmail;


  HomeBloc({required this.favoritesBox, required this.currentUserEmail})
      : super(const HomeState.initial()) {
    on<HomeEvent>(_onEvent);
    add(const HomeEvent.loadProducts());
  }

  Future<void> _onEvent(HomeEvent event, Emitter<HomeState> emit) async {
    await event.when(
      loadProducts: () async {
        if (isClosed) return;
        emit(const HomeState.loading());
        try {
          final response = await http.get(Uri.parse(ApiService.fakeStoreApi));
          if (response.statusCode != 200) throw Exception('Failed to load products');

          final List<dynamic> jsonList = json.decode(response.body);
          final products = jsonList.map((e) => ProductModel.fromJson(e)).toList();

          final favs = favoritesBox.values.where((fav) => fav.userEmail == currentUserEmail);
          final favoriteIds = favs.map((e) => e.id).toSet();

          if (isClosed) return;
          emit(HomeState.data(
            products: products,
            favoriteIds: favoriteIds,
            loadingFavoriteIds: {},
            snackMessage: null,
            isErrorSnack: false,
          ));
        } catch (e) {
          if (isClosed) return;
          emit(HomeState.error(e.toString()));
        }
      },
      toggleFavorite: (product) async {
        final currentState = state;
        if (currentState is! Data) return;

        final id = product.id;
        if (currentState.loadingFavoriteIds.contains(id)) return;

        final newLoading = Set<int>.from(currentState.loadingFavoriteIds)..add(id);
        if (!isClosed) {
          emit(currentState.copyWith(
            loadingFavoriteIds: newLoading,
            snackMessage: null,
            isErrorSnack: false,
          ));
        }

        try {
          final existingKey = favoritesBox.keys.firstWhereOrNull((key) {
            final fav = favoritesBox.get(key);
            return fav != null && fav.userEmail == currentUserEmail && fav.id == id;
          });

          if (existingKey != null) {
            await favoritesBox.delete(existingKey);

            if (!isClosed) {
              emit(currentState.copyWith(
                snackMessage: 'Removed from favorites',
                isErrorSnack: false,
              ));
            }
          } else {
            final fav = ProductModelHive.fromProductModel(product, currentUserEmail);
            await favoritesBox.add(fav);

            if (!isClosed) {
              emit(currentState.copyWith(
                snackMessage: 'Added to favorites',
                isErrorSnack: false,
              ));
            }
          }

          final favs = favoritesBox.values.where((fav) => fav.userEmail == currentUserEmail);
          final favoriteIds = favs.map((e) => e.id).toSet();

          final updatedLoading = Set<int>.from(currentState.loadingFavoriteIds)..remove(id);
          if (!isClosed) {
            emit(currentState.copyWith(
              favoriteIds: favoriteIds,
              loadingFavoriteIds: updatedLoading,
            ));
          }
        } catch (e) {
          final updatedLoading = Set<int>.from(currentState.loadingFavoriteIds)..remove(id);
          if (!isClosed) {
            emit(currentState.copyWith(
              snackMessage: 'Failed to update favorites',
              isErrorSnack: true,
              loadingFavoriteIds: updatedLoading,
            ));
          }
        }
      },
      retry: () async {
        add(const HomeEvent.loadProducts());
      },
    );
  }
}
