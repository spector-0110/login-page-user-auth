import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  CoustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});
  final TextEditingController controller;
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
            fillColor: Colors.black12,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white54)),
      ),
    );
  }
}
