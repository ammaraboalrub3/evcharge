import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.onchange,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.hintStyle,
    this.onSaved,
    this.maxLines = 1,
    this.maxLength,
  });
  final String? hintText;
  final TextInputType? keyboardType;

  final Widget? suffixIcon;
  final void Function(String?)? onchange;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final void Function(String?)? onSaved;
  final int? maxLines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      onSaved: onSaved,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      onChanged: onchange,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field is required";
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: Color.fromARGB(255, 242, 242, 242),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 241, 241, 241)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 192, 192, 192),
          ),
        ),
      ),
    );
  }
}
