// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.text,
      required this.subText,
      required this.notice,
      required this.containerText});
  final String text;
  final String subText;
  final String notice;
  final String containerText;

  @override
  Widget build(BuildContext context) {
    var spacer = SizedBox(
      height: 15,
    );
    spacer = SizedBox(
      height: spacer.height,
    );
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height / 3.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 15),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          subText,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: activeCyanColor),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      notice,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
                spacer,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: screenSize.width,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey[400] as Color,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        containerText,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
