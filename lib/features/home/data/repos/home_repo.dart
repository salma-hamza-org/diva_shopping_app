import 'package:diva_shopping_app/features/home/data/models/product_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<List<ProductModel>> getAllProducts() async {
    try {
      final response = await _apiService.getAllProducts();
      return response;
    } catch (error) {
      throw Exception('Failed to load products: $error');
    }
  }

  Future<ApiResult<List<ProductModel>>> getHomeCategoryProducts(
      String categoryName) async {
    try {
      List<ProductModel> response;

      if (categoryName == 'All') {
        response = await _apiService.getAllProducts();
      } else {
        response =
            await _apiService.getCategoryProducts(categoryName: categoryName);
      }
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}