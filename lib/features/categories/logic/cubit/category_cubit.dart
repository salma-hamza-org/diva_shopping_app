import 'package:bloc/bloc.dart';
import 'package:diva_shopping_app/features/categories/data/repos/category_repo.dart';

import '../../../../core/networking/api_error_handler.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo _categoryRepo;
  CategoryCubit(this._categoryRepo) : super(const CategoryState.initial());

  /// getCategoriesName
  void getCategoriesList() async {
    emit(const CategoryState.categoriesLoading());
    try {
      final apiResult = await _categoryRepo.getAllCategories();
      apiResult.when(
        success: (categoriesList) {
          emit(CategoryState.categoriesSuccess(categoriesList));
        },
        failure: (errorHandler) {
          emit(CategoryState.categoriesError(errorHandler));
        },
      );
    } catch (error) {
      emit(CategoryState.categoriesError(
          ErrorHandler.handle('No categories found')));
    }
  }

  /// getCategoryProducts
  void getCategoryProducts(String categoryName) async {
    emit(const CategoryState.categoryProductsLoading());
    try {
      final apiResult = await _categoryRepo.getCategoryProducts(categoryName);
      apiResult.when(
        success: (productsList) {
          emit(CategoryState.categoryProductsSuccess(productsList));
        },
        failure: (errorHandler) {
          emit(CategoryState.categoryProductsError(errorHandler));
        },
      );
    } catch (error) {
      emit(CategoryState.categoryProductsError(
          ErrorHandler.handle('No products found for this category')));
    }
  }
}
