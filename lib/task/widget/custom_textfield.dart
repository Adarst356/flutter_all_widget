import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfields extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextCapitalization? textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final String? hint;
  final String labelText;

  const CustomTextfields({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.prefixIcon,
    this.validator,
    this.suffixIcon,
    required this.labelText,
    this.inputFormatters,
    this.keyboardType = TextInputType.text,
    this.hint,
    this.textCapitalization,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hint,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: (suffixIcon),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
