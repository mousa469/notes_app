import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
   CustomTextForm(
      {super.key,
      this.edgeInsetsForContentPadding,
      required this.hintText,
      required this.controller,
      this.suffixIcon,
      required this.isSecured});

  final String hintText;
  final TextEditingController controller;
  IconButton? suffixIcon;
  bool isSecured;
  EdgeInsets? edgeInsetsForContentPadding  ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: isSecured,
      validator: (data) {
        if (data == null || data.isEmpty) {
          return "field is required";
        }
        return null;
      },
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        
        contentPadding:edgeInsetsForContentPadding,
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.white,
        errorStyle: const TextStyle(color: Colors.white),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: hintText,
        hintStyle: TextStyle(  color:  Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}