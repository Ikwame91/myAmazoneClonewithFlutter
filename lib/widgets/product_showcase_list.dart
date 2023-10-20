// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';

class ProductShowCaseListView extends StatelessWidget {
  const ProductShowCaseListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate a reasonable default height based on the screen height
    ui.Size screenSize = MediaQuery.of(context).size;
    double defaultHeight = screenSize.height * 0.5;
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Text(
                'Deals related to items in your cart',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: defaultHeight,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(11),
                image: DecorationImage(
                    image: AssetImage('assets/images/cameraimage.png'))),
          ),
        )
      ],
    );
  }
}
