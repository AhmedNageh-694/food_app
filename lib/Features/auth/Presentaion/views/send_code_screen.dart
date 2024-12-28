import 'package:flutter/material.dart';
import 'package:foodapp/Features/auth/Presentaion/views/cahange_password.dart';

class SendCodeScreen extends StatefulWidget {
  const SendCodeScreen({super.key});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.height,
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Forgot Pasword",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "An OTP Code Send to your Phone Enter   it here",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  onTapOutside: (_) =>
                      FocusManager.instance.primaryFocus!.unfocus(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Enter OPT Code ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffffbc41)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CahangePassword(),
                      ));
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
