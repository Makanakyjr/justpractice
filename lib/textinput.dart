import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final String text;
  final bool isObscure;

  const CustomTextInput(
      {super.key,
      required this.controller,
       this.errorMessage,
      required this.text,
       this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      showCursor: true,
      obscureText: isObscure == true ? true : false,
      decoration: InputDecoration(
        labelText: text,
        hintTextDirection: TextDirection.ltr,
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage ?? "This field cannot be empty";
        } else {
          return null;
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
    );
    
  }
}
