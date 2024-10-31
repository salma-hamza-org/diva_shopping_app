import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  List<ProductModel> allProducts = [];
  int selectedIndex = 0;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getAllProducts() async {
    emit(const HomeState.getAllProductsLoading());
    try {
      final productList = await _homeRepo.getAllProducts();
      emit(HomeState.getAllProductsSuccess(productList));
      allProducts = productList;
    } catch (error) {
      emit(HomeState.getAllProductsError(error: error.toString()));
    }
  }

  void resetCategoryIndex() {
    selectedIndex = 0;
    emit(HomeState.getAllProductsSuccess(allProducts));
  }

  void searchProducts(String query) {
    resetCategoryIndex();
    if (query.isEmpty) {
      emit(HomeState.getAllProductsSuccess(allProducts));
    } else {
      final filteredProducts = allProducts
          .where((product) =>
              product.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      emit(HomeState.getAllProductsSuccess(filteredProducts));
    }
  }

  void getHomeCategoryProducts(String categoryName) async {
    emit(const HomeState.getAllProductsLoading());
    try {
      final apiResult = await _homeRepo.getHomeCategoryProducts(categoryName);
      apiResult.when(
        success: (productsList) {
          emit(HomeState.getAllProductsSuccess(productsList));
        },
        failure: (error) {
          emit(HomeState.getAllProductsError(error: error.toString()));
        },
      );
    } catch (error) {
      emit(const HomeState.getAllProductsError(
          error: 'No products found for this category'));
    }
  }
}
