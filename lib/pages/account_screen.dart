// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/accountscreenappbar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const AccountScreenAppbar(),
          body: SingleChildScrollView(
            child: SizedBox(
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                children: [
                  Container(
                    height: kAppBarHeight,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: backgroundGradient,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Container(
                      height: kAppBarHeight / 2,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.white,
                            Colors.white.withOpacity(0.000000000000001)
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Hello, ',
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 26,
                                ),
                              ),
                              TextSpan(
                                text: 'Nkay',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundImage: AssetImage(
                                'assets/images/person.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
