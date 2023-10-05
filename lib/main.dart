// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/pages/sign_in_screen.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';

void main() {
  runApp(const AmazonClone());
}

class AmazonClone extends StatelessWidget {
  const AmazonClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: SignInScreen());
  }
}
