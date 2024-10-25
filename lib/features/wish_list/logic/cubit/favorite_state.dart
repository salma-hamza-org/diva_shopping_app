import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/product_model.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = FavoriteInitial;
  const factory FavoriteState.success(List<ProductModel?> favorites) =
      FavoriteSuccess;
  const factory FavoriteState.failure(String errorMessage) = FavoriteFailure;
}
