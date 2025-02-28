import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/features/auth/data/repos/login_repo.dart';
import 'package:flutter_advance/features/auth/logic/login_cubit.dart';

import 'package:get_it/get_it.dart';



final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  // ApiService depends on dio package to make network requests.
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  // LoginRepo depends on ApiService.
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // LoginCubit depends on LoginRepo.
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
