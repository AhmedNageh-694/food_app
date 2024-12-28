import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Features/auth/Presentaion/repo/auth_repo.dart';

class AuthRepoImplement implements AuthRepo {
  @override
  Future<void> login(TextEditingController emailController,
      TextEditingController passwordController) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw ('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw ('Wrong password provided for that user.');
      } else {
        throw ('Check your email or password.');
      }
    } catch (e) {
      throw ('An error occurred during login. Please try again.');
    }
  }

  @override
  Future<void> register(TextEditingController emailController,
      TextEditingController passwordController) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text);
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        throw 'The account already exists for that email.';
      }
    } catch (e) {
      throw "An error occurred: $e please try again";
    }
  }
}
