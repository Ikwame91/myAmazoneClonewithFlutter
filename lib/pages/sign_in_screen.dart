// ignore_for_file: prefer_const_constructors

import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                amazonLogo,
                height: screenSize.height * 0.10,
              ),
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width * 0.8,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign in',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 33),
                    ),
                    TextFieldwidget(
                        hintText: 'Enter your email',
                        title: 'Email',
                        obscureText: false,
                        controller: emailController),
                    TextFieldwidget(
                        hintText: 'Enter your password',
                        title: 'Password',
                        obscureText: false,
                        controller: emailController),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
