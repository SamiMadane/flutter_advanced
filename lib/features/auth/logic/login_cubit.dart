import 'package:flutter/material.dart';
import 'package:flutter_advance/features/auth/data/models/login_request_body.dart';
import 'package:flutter_advance/features/auth/data/repos/login_repo.dart';
import 'package:flutter_advance/features/auth/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// LoginCubit depends on LoginRepo.
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
