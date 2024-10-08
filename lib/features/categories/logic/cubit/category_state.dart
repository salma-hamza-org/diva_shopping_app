import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  // categoriesNameStates
  const factory CategoryState.categoriesLoading() = CategoriesLoading;
  const factory CategoryState.categoriesSuccess(List<String?>? categoriesList) =
      CategoriesSuccess;
  const factory CategoryState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;
  // categoryProductStates
  const factory CategoryState.categoryProductsLoading() =
      CategoryProductsLoading;
  const factory CategoryState.categoryProductsSuccess(
      List<ProductModel?>? productsList) = CategoryProductsSuccess;
  const factory CategoryState.categoryProductsError(ErrorHandler errorHandler) =
      CategoryProductsError;
}
