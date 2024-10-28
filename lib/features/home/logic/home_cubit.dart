import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

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
