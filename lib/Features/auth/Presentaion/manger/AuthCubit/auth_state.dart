part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class LoginAuthSuccess extends AuthState {}

class SignupAuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String errMessage;

  AuthFailure({required this.errMessage});
}
class AuthPasswordVisibilityChanged extends AuthState {
  final bool isObscure;

  AuthPasswordVisibilityChanged(this.isObscure);
}