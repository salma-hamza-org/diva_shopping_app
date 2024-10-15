import '../../../../core/helpers/shared_pref.dart';
import '../../../home/data/models/product_model.dart';

class FavoriteRepo {
  Future<void> addFavorite(ProductModel product) async {
    await SharedPrefHelper.addFavorite(product);
  }

  Future<void> removeFavorite(ProductModel product) async {
    await SharedPrefHelper.removeFavorite(product);
  }

  Future<List<ProductModel>> getFavorites() async {
    return await SharedPrefHelper.getFavorites();
  }

  Future<bool> isFavorite(ProductModel product) async {
    List<ProductModel> favorites = await getFavorites();
    return favorites.any((fav) => fav.id == product.id);
  }
}
