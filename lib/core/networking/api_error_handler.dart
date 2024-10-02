import 'package:dio/dio.dart';

import 'api_error_model.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT,
}

class ResponseCode {
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int UNAUTHORISED = 401;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int INTERNAL_SERVER_ERROR = 500;
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = ApiErrorModel(message: 'An unexpected error occurred.');
    }
  }

  ApiErrorModel _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(message: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ApiErrorModel(message: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(message: 'Receive Timeout');
      case DioExceptionType.badResponse:
        return ApiErrorModel(message: 'Bad Response: ${error.response?.data}');
      case DioExceptionType.cancel:
        return ApiErrorModel(message: 'Request Cancelled');
      case DioExceptionType.unknown:
      default:
        return ApiErrorModel(message: 'Unknown Error');
    }
  }
}
