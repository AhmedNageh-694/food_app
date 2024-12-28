import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/auth/Presentaion/manger/AuthCubit/auth_cubit.dart';

class CustomPasswordField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  final String Function(String?)? validator;
  const CustomPasswordField({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ??
          (value) {
            if ((value == null || value.isEmpty)) {
              return 'This field is required';
            }
            return null;
          },
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: labelText,
        suffixIcon: IconButton(
          icon: Icon(
            BlocProvider.of<AuthCubit>(context).isObscure
                ? Icons.visibility_off
                : Icons.visibility,
          ),
          onPressed: () {
            BlocProvider.of<AuthCubit>(context).togglePasswordVisibility();
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      obscureText: BlocProvider.of<AuthCubit>(context).isObscure,
    );
  }
}
