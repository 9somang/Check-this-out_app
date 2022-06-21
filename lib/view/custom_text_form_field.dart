import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  final funValidator;
  final controller;

  const CustomTextFormField({
    required this.hint,
    required this.funValidator,
    this.controller}
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 70,
        width: 350,
        child: TextFormField(
          cursorColor: Colors.white,
          controller: controller,
          validator:  funValidator,
          obscureText: hint=="Password" ? true : false,
          decoration: InputDecoration(
            labelText: '$hint',
            hintText: "Enter $hint",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),

          ),
        ),
      ),
    );
  }
}