import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:login_page/components/customTextField.dart';
import 'package:login_page/components/iconTile.dart';
import 'package:login_page/components/signInButton.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String? hintText;

  bool? obscureText;

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  void login(String email, password) async {
    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // var data = jsonDecode(response.body.toString());
        //  print(data['token']);
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    // print(width);
    // print(height);

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(
                  Icons.lock,
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
                  controller: userNameController,
                ),
                const SizedBox(
                  height: 22,
                ),

                //password textfield

                CoustomTextField(
                  hintText: 'password',
                  obscureText: false,
                  controller: passwordController,
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

                SignInButtom(onTap: () {
                  login(userNameController.text.toString(),
                      passwordController.text.toString());
                }),

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

                const SizedBox(
                  height: 50.0,
                ),

                // register now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    //const SizedBox(width: 2),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
