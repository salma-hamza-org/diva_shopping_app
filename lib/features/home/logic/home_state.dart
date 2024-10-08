part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.tabChanged(int index) = TabChanged;


  const factory HomeState.getAllProductsLoading() = GetAllProductsLoading;
  const factory HomeState.getAllProductsSuccess(List<ProductModel?>? productModelList) = GetAllProductsSuccess;
  const factory HomeState.getAllProductsError({required String error}) = GetAllProductsError;

}