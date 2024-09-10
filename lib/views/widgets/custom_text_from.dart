import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const  CustomTextForm(
      {super.key,
      this.edgeInsetsForContentPadding,
      required this.hintText,
      required this.controller,  this.maxLines =1,
      
      });

  final String hintText;
  final TextEditingController controller;
  
 
  final  EdgeInsets? edgeInsetsForContentPadding  ;
  final int maxLines ; 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      maxLines: maxLines ,
      validator: (data) {
        if (data == null || data.isEmpty) {
          return "field is required";
        }
        return null;
      },
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        
        
        
        suffixIconColor: Colors.white,
        errorStyle: const TextStyle(color: Colors.white),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: hintText,
        hintStyle: const TextStyle(  color:  Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}