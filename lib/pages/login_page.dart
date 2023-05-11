import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              Icon(
                Icons.home,
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
               SizedBox(
                height: 20,
              ),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
