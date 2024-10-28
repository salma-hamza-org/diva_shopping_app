import 'package:diva_shopping_app/features/categories/logic/cubit/category_cubit.dart';
import 'package:diva_shopping_app/features/categories/logic/cubit/category_state.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_list/categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return setupLoading();
          },
          categoriesSuccess: (categoriesList) {
            return setupSuccess(categoriesList);
          },
          categoriesError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const CategoriesList(
      isLoading: true,
    );
  }

  Widget setupSuccess(categoriesList) {
    return CategoriesList(
      categoriesList: categoriesList,
      isLoading: false,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
