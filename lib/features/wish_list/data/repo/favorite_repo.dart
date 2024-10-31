import 'package:hive/hive.dart';

import '../../../home/data/models/product_model.dart';

class FavoriteRepo {
  final String favoritesBox = 'favorites';

  // Open the favorites box and perform actions
  Future<Box<ProductModel>> _openFavoritesBox() async {
    return await Hive.openBox<ProductModel>(favoritesBox);
  }

  Future<void> addFavorite(ProductModel product) async {
    final box = await _openFavoritesBox();
    await box.put(product.id, product); // Use product id as the key
  }

  Future<void> removeFavorite(ProductModel product) async {
    final box = await _openFavoritesBox();
    await box.delete(product.id); // Remove by product id
  }

  Future<List<ProductModel>> getFavorites() async {
    final box = await _openFavoritesBox();
    return box.values.toList(); // Return all favorite products
  }

  Future<bool> isFavorite(ProductModel product) async {
    final box = await _openFavoritesBox();
    return box.containsKey(product.id); // Check if product id exists in the box
  }
}
