import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  CoustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});
  final controller;
  String hintText;
  bool obscureText;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
         obscureText: obscureText,
         controller: controller,
        decoration: InputDecoration(
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade300,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
