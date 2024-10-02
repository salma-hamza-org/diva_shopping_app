import 'package:diva_shopping_app/features/cart/ui/cart_tab.dart';
import 'package:diva_shopping_app/features/categories/ui/category_tab.dart';
import 'package:diva_shopping_app/features/home/data/home_repo.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../wish_list/ui/wish_list_tab.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());


  int currentIndexOfPage = 0;
  List<Widget> bottomScreens = [
    const HomeTab(),
    const CategoryTab(),
    const CartTab(),
    const WishListTab(),
  ];
  void onTabChanged(int index) {
    currentIndexOfPage = index;
    emit(HomeState.tabChanged(index));
  }



}
