import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_constants.dart';
import 'package:flutter_advance/features/auth/data/models/login_request_body.dart';
import 'package:flutter_advance/features/auth/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';
// ApiService is an abstract class that defines the API endpoints.
// ApiService depends on dio package to make network requests.
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );
}
