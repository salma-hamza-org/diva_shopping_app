import 'package:bloc/bloc.dart';
import 'package:diva_shopping_app/features/categories/data/repos/category_repo.dart';

import '../../../../core/networking/api_error_handler.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo _categoryRepo;
  CategoryCubit(this._categoryRepo) : super(const CategoryState.initial());

  /// getCategoriesName
  void getCategoriesList() async {
    try {
      final categoriesList = await _categoryRepo.getAllCategories();
      emit(CategoryState.categoriesSuccess(categoriesList));
    } catch (error) {
      emit(CategoryState.categoriesError(
          ErrorHandler.handle('No categories found')));
    }
  }
}
