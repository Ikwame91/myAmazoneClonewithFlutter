// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/widgets/customButton.dart';

class MoreScreenWidget extends StatelessWidget {
  const MoreScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Shortcuts',
            style: GoogleFonts.aleo(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  letterSpacing: 0.3,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CustomButton(
                      onPressed: () {},
                      color: Colors.red,
                      width: 110,
                      height: 110,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/tesla.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      'data',
                      style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            letterSpacing: 0.3,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Expanded(
                    child: Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          color: activeCyanColor,
                          width: 110,
                          height: 110,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/handshake.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'data',
                          style: GoogleFonts.aleo(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                letterSpacing: 0.3,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      CustomButton(
                        onPressed: () {},
                        color: Color(0xFF7BC0F8),
                        width: 110,
                        height: 110,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/images/location.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text(
                        'data',
                        style: GoogleFonts.aleo(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              letterSpacing: 0.3,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                CustomButton(
                  onPressed: () {},
                  color: Colors.white,
                  width: 110,
                  height: 110,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage('assets/images/rename.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  'data',
                  style: GoogleFonts.aleo(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        letterSpacing: 0.3,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
