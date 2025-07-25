import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Constants/hive_boxes.dart';
import '../../cubit/user/user_cubit.dart';
import '../../db/product_model_hive.dart';
import '../../service_locator.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'bloc/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userCubit = getIt<UserCubit>();

    if (userCubit.currentUser == null) {
      return const Scaffold(body: Center(child: Text('Please login first')));
    }

    return BlocProvider(
      create: (_) => HomeBloc(
        favoritesBox: Hive.box<ProductModelHive>(HiveBoxes.favoriteProducts),
        currentUserEmail: userCubit.currentUser!.email,
      ),
      child: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) {
          if (previous is Data && current is Data) {
            return previous.snackMessage != current.snackMessage &&
                current.snackMessage != null;
          }
          return false;
        },
        listener: (context, state) {
          if (state is Data && state.snackMessage != null) {
            final snackMessage = state.snackMessage!;
            final bgColor = state.isErrorSnack ? Colors.red : Colors.green;

            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(snackMessage),
                backgroundColor: bgColor,
                duration: const Duration(seconds: 2),
              ),
            );
          }
        },
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
            error: (message) => Scaffold(
              body: Center(
                child: Text(message),
              ),
            ),
            data: (products, favoriteIds, loadingFavoriteIds, snackMessage, isErrorSnack) {
              return Scaffold(
                appBar: AppBar(title: const Text('Products')),
                body: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    final isFav = favoriteIds.contains(product.id);
                    final isLoading = loadingFavoriteIds.contains(product.id);

                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(product.image),
                          radius: 24,
                        ),
                        title: Text(
                          product.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                        trailing: isLoading
                            ? const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                            : IconButton(
                          icon: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            color: isFav ? Colors.red : null,
                          ),
                          onPressed: () {
                            context.read<HomeBloc>().add(
                              HomeEvent.toggleFavorite(product),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}


