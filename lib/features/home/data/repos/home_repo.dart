import 'package:diva_shopping_app/features/home/data/models/product_model.dart';

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

}