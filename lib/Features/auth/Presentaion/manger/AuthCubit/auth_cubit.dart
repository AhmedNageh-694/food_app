import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/auth/Presentaion/repo/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();
  final AuthRepo authRepo;
  bool isObscure = true;

  void togglePasswordVisibility() {
    isObscure = !isObscure;
    emit(AuthPasswordVisibilityChanged(isObscure));
  }

  void login() async {
    emit(AuthInitial());
    try {
      emit(AuthLoading());
      await authRepo.login(loginEmailController, loginPasswordController);
      emit(LoginAuthSuccess());
    } catch (e) {
      emit(AuthFailure(errMessage: e.toString()));
    }
  }

  void signup() async {
    emit(AuthInitial());
    try {
      emit(AuthLoading());
      await authRepo.register(
          registerEmailController, registerPasswordController);
      emit(SignupAuthSuccess());
    } catch (e) {
      emit(AuthFailure(errMessage: e.toString()));
    }
  }
}
