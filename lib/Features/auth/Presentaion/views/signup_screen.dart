import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/auth/Presentaion/manger/AuthCubit/auth_cubit.dart';
import 'package:foodapp/Features/auth/Presentaion/views/Widgets/SignUp/sign_up_form.dart';
import 'package:foodapp/Features/auth/Presentaion/views/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignUpForm(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                    BlocProvider.of<AuthCubit>(context)
                        .registerEmailController
                        .clear();
                    BlocProvider.of<AuthCubit>(context)
                        .registerPasswordController
                        .clear();
                  },
                  child: Text(
                    "Log in",
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
                    onPressed: () async {
                      // await Firebase
                    },
                    icon: Icon(Icons.g_mobiledata_sharp, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
