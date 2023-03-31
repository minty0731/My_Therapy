import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText});


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
        ),
      ),
    );

  }
}