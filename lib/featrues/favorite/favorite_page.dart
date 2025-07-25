import 'package:bloc_demo_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants/dimensions.dart';
import '../../constants/hive_boxes.dart';
import '../../cubit/user/user_cubit.dart';
import '../../db/product_model_hive.dart';
import '../../service_locator.dart';
import '../../widgets/product_list_tile.dart';
import 'bloc/favorite_bloc.dart';
import 'bloc/favorite_event.dart';
import 'bloc/favorite_state.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) {
        final favoriteBox = Hive.box<ProductModelHive>(
          HiveBoxes.favoriteProducts,
        );
        final userCubit = getIt<UserCubit>();
        return FavoriteBloc(favoriteBox: favoriteBox, userCubit: userCubit);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(local.favoritePageTitle),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 3,
          centerTitle: true,
        ),
        body: BlocConsumer<FavoriteBloc, FavoriteState>(
          listenWhen: (previous, current) {
            // แสดง SnackBar เมื่อการลบเสร็จ (removingProductId เปลี่ยนจากไม่ null เป็น null)
            final removedNow = previous.removingProductId != null && current.removingProductId == null;

            // แสดง SnackBar เมื่อเกิด error ใหม่
            final errorOccurred = previous.errorMessage != current.errorMessage && current.errorMessage != null;

            return removedNow || errorOccurred;
          },
          listener: (context, state) {
            if (state.removingProductId == null && state.errorMessage == null) {
              // แปลว่าการลบเสร็จสมบูรณ์ (ไม่มี error)
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(local.removeFromFavoritesTooltip),
                  backgroundColor: theme.colorScheme.error,
                  duration: const Duration(seconds: 2),
                ),
              );
            } else if (state.errorMessage != null) {
              // กรณีเกิด error
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage!),
                  backgroundColor: theme.colorScheme.error,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.status == FavoriteStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == FavoriteStatus.success) {
              if (state.favorites.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal:
                      Dimensions.favoriteEmptyMessageHorizontalPadding,
                    ),
                    child: Text(
                      local.favoritePageEmptyMessage,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<FavoriteBloc>().add(const LoadFavorites());
                },
                color: colorScheme.primary,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    vertical: Dimensions.favoritePaddingVertical,
                    horizontal: Dimensions.favoritePaddingHorizontal,
                  ),
                  itemCount: state.favorites.length,
                  separatorBuilder: (_, __) => const SizedBox(
                    height: Dimensions.favoriteListSeparatorHeight,
                  ),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final product = state.favorites[index];
                    final isRemoving = state.removingProductId == product.id;

                    return ProductListTile(
                      product: product.toProductModel(),
                      isFavorite: true,
                      isLoadingFavorite: isRemoving,
                      onFavoriteToggle: (_) async {
                        context.read<FavoriteBloc>().add(
                          RemoveFavorite(product.id),
                        );
                      },
                    );
                  },
                ),
              );
            }

            if (state.status == FavoriteStatus.failure) {
              return Center(
                child: Text('Error: ${state.errorMessage ?? 'Unknown error'}'),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
