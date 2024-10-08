import 'package:diva_shopping_app/core/shared_widgets/grid_of_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/cubit/category_cubit.dart';
import '../../../logic/cubit/category_state.dart';

class CategoryProductsBlocBuilder extends StatelessWidget {
  const CategoryProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      buildWhen: (previous, current) =>
          current is CategoryProductsLoading ||
          current is CategoryProductsSuccess ||
          current is CategoryProductsError,
      builder: (context, state) {
        return state.maybeWhen(
          categoryProductsLoading: () {
            return setupLoading();
          },
          categoryProductsSuccess: (products) {
            return setupSuccess(products);
          },
          categoryProductsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const Expanded(
      child: GridOfProducts(
        isLoading: true,
      ),
    );
  }

  Widget setupSuccess(products) {
    return Expanded(
      child: GridOfProducts(
        productList: products,
        isLoading: false,
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
