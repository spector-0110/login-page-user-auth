import 'package:flutter/material.dart';
import 'package:login_page/components/customTextField.dart';
import 'package:login_page/components/iconTile.dart';
import 'package:login_page/components/signInButton.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String? hintText;
  bool? obscureText;
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.home,
                size: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),

              // username textfield

              CoustomTextField(
                hintText: 'username',
                obscureText: false,
                controller: _userNameController,
              ),
              const SizedBox(
                height: 22,
              ),

              //password textfield

              CoustomTextField(
                hintText: 'password',
                obscureText: true,
                controller: _passwordController,
              ),

              //forget password buttom

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 42.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.man),
                        label: const Text('forget password'))
                  ],
                ),
              ),

              const SizedBox(
                height: 22,
              ),

              //sign in buttom

              SignInButtom(onTap: () {}),

              // using other login methods
              
              const SizedBox(
                height: 32,
              ),

              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 40.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              //other icons

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconTile(imagePath: 'assets/images/google.png'),
                  const SizedBox(
                    width: 25,
                  ),
                  IconTile(imagePath: 'assets/images/apple.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
