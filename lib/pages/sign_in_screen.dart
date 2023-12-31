// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/Authentications/authentication_method.dart';
import 'package:myown_amazone_clone/pages/sign_up_screen.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/utils/utils.dart';
import 'package:myown_amazone_clone/widgets/custom_button.dart';
import 'package:myown_amazone_clone/widgets/textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // Function to dismiss the keyboard
  void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus(); // This will dismiss the keyboard
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthenticationMethods authenticationMethods = AuthenticationMethods();
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      // Wrap the entire screen with GestureDetector
      onTap: () {
        dismissKeyboard(context); // Call the function to dismiss the keyboard
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenSize.height,
            width: screenSize.width,
            child: Padding(
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
                      height: screenSize.height * 0.6,
                      width: screenSize.width * 0.8,
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 33),
                          ),
                          TextFieldwidget(
                              hintText: 'Enter your email',
                              title: 'Email',
                              obscureText: false,
                              controller: emailController),
                          TextFieldwidget(
                              hintText: 'Enter your password',
                              title: 'Password',
                              obscureText: true,
                              controller: passwordController),
                          Align(
                            alignment: Alignment.center,
                            child: CustomMainButton(
                              color: yellowColor,
                              isLoading: isLoading,
                              onPressed: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                String output =
                                    await authenticationMethods.signInUser(
                                        email: emailController.text,
                                        password: passwordController.text);
                                setState(() {
                                  isLoading = false;
                                });

                                if (output == 'success') {
                                  //function
                                } else {
                                  Utils().showSnackBar(
                                      context: context, content: output);
                                }
                              },
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    letterSpacing: 0.6,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'New To Amazon',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    CustomMainButton(
                      color: Colors.grey[400] as Color,
                      isLoading: false,
                      onPressed: () {
                        //push replacement---> The new screen isn'nt going to be on top of the
                        //previous screen but its going to replace the current screen
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignUpScreen();
                        }));
                      },
                      child: Text('Create an Account with Nkays Amazon Clone',
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 0.6,
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
