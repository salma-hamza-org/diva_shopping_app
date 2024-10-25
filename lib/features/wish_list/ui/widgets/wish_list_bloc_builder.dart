import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_cubit.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_state.dart';
import 'package:diva_shopping_app/features/wish_list/ui/widgets/wish_list_is_empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widgets/grid_of_products.dart';

class WishlistBlocBuilder extends StatelessWidget {
  const WishlistBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      buildWhen: (previous, current) =>
          current is FavoriteSuccess || current is FavoriteFailure,
      builder: (context, state) {
        return state.maybeWhen(
          success: (favorites) {
            if (favorites.isEmpty) {
              return const WishListIsEmpty();
            }
            return Expanded(
              child: GridOfProducts(
                productList: favorites,
                isLoading: false,
              ),
            );
          },
          failure: (errorMessage) {
            return Center(
              child: Text(errorMessage),
            );
          },
          orElse: () {
            return const WishListIsEmpty();
          },
        );
      },
    );
  }
}
