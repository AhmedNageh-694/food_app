import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/auth/Presentaion/manger/AuthCubit/auth_cubit.dart';
import 'package:foodapp/Features/auth/Presentaion/views/Widgets/text_form_field.dart';
import 'package:foodapp/Features/auth/Presentaion/views/Widgets/text_form_field_password.dart';
import 'package:foodapp/Features/cart/presentation/screens/my_cart_screen.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final formKey = GlobalKey<FormState>();
  final bool isEye = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginAuthSuccess) {
          BlocProvider.of<AuthCubit>(context).loginEmailController.clear();
          BlocProvider.of<AuthCubit>(context).loginEmailController.clear();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Login Successfully")));
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => CartScreen(),
          ));
        }
        if (state is AuthFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Column(
            children: [
              Text(
                "Log In",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              CustomeForm(
                labelText: "Email",
                controller:
                    BlocProvider.of<AuthCubit>(context).loginEmailController,
                icon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$")
                      .hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              CustomPasswordField(
                labelText: "Password",
                controller:
                    BlocProvider.of<AuthCubit>(context).loginPasswordController,
                // Hardcoded for now
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Color(0xffffbc41),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<AuthCubit>(context).login();
                  }
                },
                child: state is AuthLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text(
                        "Log In",
                        style: TextStyle(color: Colors.black),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
