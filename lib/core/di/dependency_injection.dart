import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/features/auth/data/repos/login_repo.dart';
import 'package:flutter_advance/features/auth/data/repos/sign_up_repo.dart';
import 'package:flutter_advance/features/auth/logic/login_cubit.dart';
import 'package:flutter_advance/features/auth/logic/sign_up_cubit.dart';

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
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // singup
  // registerLazySingleton : It will create a new instance of the object when it is first requested.(لمرة واحدة فقط)
  // registerFactory : It will create a new instance of the object every time it is requested. (كل مرة بحتاجها بحكيله يعملي اوبجكت)
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
