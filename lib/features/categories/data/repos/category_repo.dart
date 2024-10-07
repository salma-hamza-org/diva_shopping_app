import '../../../../core/networking/api_service.dart';

class CategoryRepo {
  final ApiService _apiService;

  CategoryRepo(this._apiService);

  Future<List<String?>?> getAllCategories() async {
    try {
      final response = await _apiService.getAllCategories();
      return response;
    } catch (error) {
      throw Exception('Failed to load categories: $error');
    }
  }
}
