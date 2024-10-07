import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  // categoriesName
  const factory CategoryState.categoriesLoading() = CategoriesLoading;
  const factory CategoryState.categoriesSuccess(List<String?>? categoriesList) =
      CategoriesSuccess;
  const factory CategoryState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;
}
