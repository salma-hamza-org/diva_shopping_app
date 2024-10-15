import 'package:bloc/bloc.dart';

import '../../../home/data/models/product_model.dart';
import '../../data/repo/favorite_repo.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepo favoriteRepository;

  FavoriteCubit(this.favoriteRepository) : super(const FavoriteState.initial());

  Future<void> loadFavorites() async {
    try {
      final favorites = await favoriteRepository.getFavorites();
      emit(FavoriteState.success(favorites));
    } catch (e) {
      emit(const FavoriteState.failure('Failed to load favorites'));
    }
  }

  Future<void> addToFavorites(ProductModel product) async {
    try {
      await favoriteRepository.addFavorite(product);
      final currentState = state;
      if (currentState is FavoriteSuccess) {
        emit(FavoriteState.success([...currentState.favorites, product]));
      } else {
        emit(FavoriteState.success([product]));
      }
    } catch (e) {
      emit(const FavoriteState.failure('Failed to add to favorites'));
    }
  }

  Future<void> removeFromFavorites(ProductModel product) async {
    try {
      await favoriteRepository.removeFavorite(product);
      final currentState = state;
      if (currentState is FavoriteSuccess) {
        emit(FavoriteState.success(
          currentState.favorites.where((p) => p!.id != product.id!).toList(),
        ));
      }
    } catch (e) {
      emit(const FavoriteState.failure('Failed to remove from favorites'));
    }
  }

  Future<void> initializeFavorites() async {
    await loadFavorites();
  }
}
