import 'package:bloc/bloc.dart';
import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/cart/data/repo/cart_repo.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_states.dart';

class CartCubit extends Cubit<CartStates> {
  final CartRepo cartRepo;

  CartCubit(this.cartRepo) : super(const CartStates.initial());

  List<CartModel> cartItems=[];

  Future<void> getAllCartItems() async {
    emit(const CartStates.loading());
    try {
      cartItems = await cartRepo.getAllCartItems();
      calculateTotalPrice(cartItems);
      emit(CartStates.success(cartItems));
    } catch (e) {
      emit(const CartStates.failure('Failed to load cart items'));
    }
  }

  double calculateTotalPrice(List<CartModel> cartItems) {
    return cartItems.isNotEmpty
        ? cartItems.map((item) => item.price * item.quantity).reduce((sum, itemTotal) => sum + itemTotal)
        : 0.0;
  }

  Future<void> addOrUpdateCartItem(CartModel item) async {
    try {
      emit(const CartStates.loading());
      await cartRepo.addOrUpdateCartItem(item);
      await getAllCartItems(); // Reload the cart items after updating
    } catch (e) {
      emit(const CartStates.failure('Failed to add/update cart item'));
    }
  }

  Future<void> updateCartItemQuantity(String id, int newQuantity) async {
    try {
      emit(const CartStates.loading());
      await cartRepo.updateCartItemQuantity(id, newQuantity);
      await getAllCartItems(); // Reload the cart items after updating quantity
    } catch (e) {
      emit(const CartStates.failure('Failed to update cart item quantity'));
    }
  }

  Future<void> deleteCartItem(String id) async {
    try {
      emit(const CartStates.loading());
      await cartRepo.deleteCartItem(id);
      await getAllCartItems(); // Reload the cart items after deletion
    } catch (e) {
      emit(const CartStates.failure('Failed to delete cart item'));
    }
  }

  Future<void> clearCart() async {
    try {
      emit(const CartStates.loading());
      await cartRepo.clearCart();
      await cartRepo.getAllCartItems();
      emit(const CartStates.success([])); // Emit empty cart after clearing
    } catch (e) {
      emit(const CartStates.failure('Failed to clear cart'));
    }
  }


}
