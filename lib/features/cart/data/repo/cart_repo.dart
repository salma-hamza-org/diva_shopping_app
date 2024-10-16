import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:hive/hive.dart';

class CartRepo {
  Future<void> addOrUpdateCartItem(CartModel item) async {
    var box = await Hive.openBox<CartModel>('cartBox');
    await box.put(item.id, item);
  }

  Future<void> updateCartItemQuantity(String id, int newQuantity) async {
    var box = await Hive.openBox<CartModel>('cartBox');

    // Retrieve the existing item from Hive
    CartModel? existingItem = box.get(id);
    if (existingItem != null) {
      if (newQuantity > 0) {
        CartModel updatedItem = CartModel(
          id: existingItem.id,
          name: existingItem.name,
          price: existingItem.price,
          quantity: newQuantity,
          imagePath: existingItem.imagePath
        );
        addOrUpdateCartItem(updatedItem);
      } else {
        deleteCartItem(existingItem.id);
      }
    }
  }

  Future<List<CartModel>> getAllCartItems() async {
    var box = await Hive.openBox<CartModel>('cartBox');
    return box.values.toList();
  }

  Future<void> deleteCartItem(String id) async {
    var box = await Hive.openBox<CartModel>('cartBox');
    await box.delete(id);
  }

  Future<void> clearCart() async {
    var box = await Hive.openBox<CartModel>('cartBox');
    await box.clear();
  }
}
