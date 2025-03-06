import 'package:flutter_advance/core/networking/api_error_handler.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/features/auth/data/models/login_request_body.dart';
import 'package:flutter_advance/features/auth/data/models/login_response.dart';

// LoginRepo depends on ApiService to make network requests.
// ApiService depends on dio package to make network requests.
class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  // function return => actually response (if success) || error (if failure)
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
