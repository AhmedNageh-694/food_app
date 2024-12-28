import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/auth/Presentaion/manger/AuthCubit/auth_cubit.dart';
import 'package:foodapp/Features/auth/Presentaion/views/Widgets/Login/login_form.dart';
import 'package:foodapp/Features/auth/Presentaion/views/forgot_pasword.dart';
import 'package:foodapp/Features/auth/Presentaion/views/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LoginForm(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Did you forget your password?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Color(0xffbebebe),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create New Account ?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                        BlocProvider.of<AuthCubit>(context)
                            .loginPasswordController
                            .clear();
                        BlocProvider.of<AuthCubit>(context)
                            .loginEmailController
                            .clear();
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xffbebebe),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.g_mobiledata, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
