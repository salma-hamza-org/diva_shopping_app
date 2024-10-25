import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_states.freezed.dart';

@freezed
class CartStates with _$CartStates {
  const factory CartStates.initial() = _CartInitial;
  const factory CartStates.loading() = CartLoading;
  const factory CartStates.success(List<CartModel> cartItems) = CartSuccess;
  const factory CartStates.failure(String errorMessage) = CartFailure;
}
