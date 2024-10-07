import 'package:diva_shopping_app/features/cart/ui/cart_tab.dart';
import 'package:diva_shopping_app/features/categories/ui/category_tab.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/home/data/repos/home_repo.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/di/dependency_injection.dart';
import '../../categories/logic/cubit/category_cubit.dart';
import '../../wish_list/ui/wish_list_tab.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  int currentIndexOfPage = 0;
  List<Widget> bottomScreens = [
    const HomeTab(),
    BlocProvider(
      create: (context) => getIt<CategoryCubit>()..getCategoriesList(),
      child: const CategoryTab(),
    ),
    const CartTab(),
    const WishListTab(),
  ];

  void onTabChanged(int index) {
    currentIndexOfPage = index;
    emit(HomeState.tabChanged(index));
  }

  void getAllProducts() async {
    emit(const HomeState.getAllProductsLoading());
    try {
      final productList = await _homeRepo.getAllProducts();
      emit(HomeState.getAllProductsSuccess(productList));
    } catch (error) {
      emit(HomeState.getAllProductsError(error: error.toString()));
    }
  }
}
