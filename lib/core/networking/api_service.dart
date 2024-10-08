import 'package:dio/dio.dart';
import 'package:diva_shopping_app/core/networking/api_constants.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/login_screen/data/models/login_request_body.dart';
import 'package:diva_shopping_app/features/login_screen/data/models/login_response.dart';
import 'package:diva_shopping_app/features/signin_screen/data/models/sign_up_request_body.dart';
import 'package:diva_shopping_app/features/signin_screen/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );

  @GET(ApiConstants.allProducts)
  Future<List<ProductModel>> getAllProducts();

  @GET(ApiConstants.allCategories)
  Future<List<String>> getAllCategories();

  @GET('${ApiConstants.categoryProducts}{categoryName}')
  Future<List<ProductModel>> getCategoryProducts({
    @Path("categoryName") required String categoryName,
  });
}
