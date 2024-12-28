import 'package:flutter/material.dart';
import 'package:foodapp/Features/auth/Presentaion/views/login_screen.dart';

class CahangePassword extends StatefulWidget {
  const CahangePassword({super.key});

  @override
  State<CahangePassword> createState() => _CahangePasswordState();
}

class _CahangePasswordState extends State<CahangePassword> {
  bool _isEyeNew = false;
  bool _isEyeConfirm = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Cahange Password",
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
                  "Enter New Password",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16),
                TextFormField(
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  validator: validator,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: " New Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isEyeNew ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isEyeNew = !_isEyeNew;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  obscureText: _isEyeNew,
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Enter Confirm Password",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  validator: validator,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: " Confirm Password",
                    suffixIcon: IconButton(
                      icon: Icon(_isEyeConfirm
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isEyeConfirm = !_isEyeConfirm;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  obscureText: _isEyeConfirm,
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
                        builder: (context) => LoginScreen(),
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Change password Successfully"),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Save",
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

  String? validator(value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }
}
