import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'grid_of_products.dart';

class AllProductBlocBuilder extends StatelessWidget {
  const AllProductBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetAllProductsLoading ||
          current is GetAllProductsSuccess ||
          current is GetAllProductsError,
      builder: (context, state) {
        return state.maybeWhen(
          getAllProductsLoading: () {
            return setupLoading();
          },
          getAllProductsSuccess: (productModelList) {
            return setupSuccess(productModelList);
          },
          getAllProductsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const GridOfProducts(
      isLoading: true,
    );
  }

  Widget setupSuccess(productModelList) {
    return GridOfProducts(
      productList: productModelList,
      isLoading: false,
    );
  }

  Widget setupError() {
    return const SizedBox(
      child: Center(child: Text('No data to show')),
    );
  }
}
