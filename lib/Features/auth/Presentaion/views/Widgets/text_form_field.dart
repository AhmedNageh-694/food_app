import 'package:flutter/material.dart';

class CustomeForm extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Icon icon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool isRequired;

  const CustomeForm({
    super.key,
    required this.labelText,
    required this.controller,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        suffixText: isRequired ? '*' : null,
        suffixStyle: TextStyle(color: Colors.red),
      ),
      validator: validator ??
          (value) {
            if (isRequired && (value == null || value.isEmpty)) {
              return 'This field is required';
            }
            return null;
          },
      onChanged: onChanged,
    );
  }
}
