import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future<void> login(
    TextEditingController emailController,
    TextEditingController passwordController,
  );
  Future<void> register(
    TextEditingController emailController,
    TextEditingController passwordController,
  );
}
