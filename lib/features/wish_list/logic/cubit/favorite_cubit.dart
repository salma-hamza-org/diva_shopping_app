import 'package:bloc/bloc.dart';

import '../../../home/data/models/product_model.dart';
import '../../data/repo/favorite_repo.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepo favoriteRepository;

  FavoriteCubit(this.favoriteRepository) : super(const FavoriteState.initial());

  List<ProductModel> favoritesList = [];

  Future<void> loadFavorites() async {
    try {
      favoritesList = await favoriteRepository.getFavorites();
      emit(FavoriteState.success(favoritesList));
    } catch (e) {
      emit(FavoriteState.failure('Failed to load favorites: ${e.toString()}'));
    }
  }

  Future<void> addToFavorites(ProductModel product) async {
    try {
      // Prevent adding duplicates
      if (await favoriteRepository.isFavorite(product)) {
        await favoriteRepository
            .removeFavorite(product); // Prevent adding duplicates
      } else {
        await favoriteRepository.addFavorite(product);
      }
      await loadFavorites(); // Reload the favorites after adding
    } catch (e) {
      emit(
          FavoriteState.failure('Failed to add to favorites: ${e.toString()}'));
    }
  }

  Future<void> removeFromFavorites(ProductModel product) async {
    try {
      await favoriteRepository.removeFavorite(product);
      await loadFavorites(); // Reload the favorites after removal
    } catch (e) {
      emit(FavoriteState.failure(
          'Failed to remove from favorites: ${e.toString()}'));
    }
  }
}
