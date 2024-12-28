import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/auth/Presentaion/manger/AuthCubit/auth_cubit.dart';
import 'package:foodapp/Features/auth/Presentaion/views/Widgets/text_form_field.dart';
import 'package:foodapp/Features/auth/Presentaion/views/Widgets/text_form_field_password.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
  });

  final TextEditingController username = TextEditingController();

  final TextEditingController phone = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final bool isEye = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignupAuthSuccess) {
        BlocProvider.of<AuthCubit>(context).registerEmailController.clear();
        BlocProvider.of<AuthCubit>(context).registerEmailController.clear();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Registered Successfully")));
      }
      if (state is AuthFailure) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.errMessage)));
      }
    }, builder: (context, state) {
      return Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            Text(
              "Sign up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            CustomeForm(
                labelText: "username",
                icon: Icon(Icons.person),
                controller: username),
            SizedBox(height: 16),
            CustomeForm(
              labelText: "Email",
              controller:
                  BlocProvider.of<AuthCubit>(context).registerEmailController,
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
            CustomeForm(
              labelText: "Phone",
              controller: phone,
              icon: Icon(Icons.phone),
              keyboardType: TextInputType.phone,
              onChanged: (value) {},
            ),
            SizedBox(height: 16),
            CustomPasswordField(
              labelText: "password",
              controller: BlocProvider.of<AuthCubit>(context)
                  .registerPasswordController,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50), backgroundColor: Color(0xffffbc41)),
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AuthCubit>(context).signup();
                }
              },
              child: state is AuthLoading
                  ? CircularProgressIndicator()
                  : Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black),
                    ),
            ),
          ],
        ),
      );
    });
  }
}
