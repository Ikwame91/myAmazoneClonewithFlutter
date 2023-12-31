// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/user_detai_model.dart';
import 'package:myown_amazone_clone/providers/user_provider.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/account_screen_buttons.dart';
import 'package:myown_amazone_clone/widgets/account_screen_custom_container.dart';
import 'package:myown_amazone_clone/widgets/accountscreenappbar.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  // Function to dismiss the keyboard
  void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus(); // This will dismiss the keyboard
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        // Wrap the entire screen with GestureDetector
        onTap: () {
          dismissKeyboard(context); // Call the function to dismiss the keyboard
        },
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: const AccountScreenAppbar(),
            body: ListView(
              children: [
                Column(
                  children: const [
                    IntroductoryWidgetAccountScreen(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: AccountScreenButton(
                                text: 'Your orders',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            AccountScreenButton(
                              text: 'Buy Again',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: AccountScreenButton(
                                text: 'Your Account',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            AccountScreenButton(
                              text: 'Your Lists',
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomContainer(
                      text: 'Your Orders',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Keep Shopping For',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Buy Again',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Your Orders',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Your Lists',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Your Accounts',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Gift Card Balance',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Your Orders',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    ),
                    CustomContainer(
                      text: 'Your Orders',
                      subText: 'See all',
                      notice: 'Hmm. We couldn\'t find any others',
                      containerText: 'Continue Shopping',
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class IntroductoryWidgetAccountScreen extends StatelessWidget {
  const IntroductoryWidgetAccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UserDetailsModel userDetailsModel =
        Provider.of<UserDetailsProvider>(context).userDetails;
    return Container(
      height: kAppBarHeight,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Container(
        height: kAppBarHeight / 2,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white.withOpacity(0.000000000000001)
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
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
                  text: userDetailsModel.name,
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
    );
  }
}
