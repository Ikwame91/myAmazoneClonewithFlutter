// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/material.dart';

class CartScreenWidget extends StatelessWidget {
  const CartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
              color: Colors.grey,
              width: 4,
            ))),
        child: Column(
          children: [
            firstcontainerofcartscreen(screenSize: screenSize),
            Container(
              height: screenSize.height / 2,
              width: screenSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class firstcontainerofcartscreen extends StatelessWidget {
  const firstcontainerofcartscreen({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height / 3.5,
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 4,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Row(
              children: [
                Text('Subtotal',
                    style: TextStyle(
                      color: Color(0xFF1A1818),
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Subtotal(color: Colors.black, cost: 1000),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: CartScreenCustomContainer(
                containerText: 'Proceed to checkout (n) items'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 22,
            ),
            child: Row(
              children: [
                CustomCheckbox(),
                Expanded(
                  child: Text(
                    'Send as a gift Include Custom Message',
                    style: TextStyle(
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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

class CartScreenCustomContainer extends StatelessWidget {
  const CartScreenCustomContainer({super.key, required this.containerText});
  final String containerText;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height / 15,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.yellow,
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          containerText,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false; // Whether the checkbox is checked

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      transformHitTests: true,
      scale: 1.5,
      child: Checkbox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value as bool;
          });
        },
      ),
    );
  }
}

class Subtotal extends StatelessWidget {
  const Subtotal({super.key, required this.color, required this.cost});
  final Color color;
  final int cost;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: const Offset(0, -5),
          child: Text(
            '\$,',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Text(
          cost.toInt().toStringAsFixed(1),
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 27,
            fontFeatures: [FontFeature.superscripts()],
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -5),
          child: Text(
            (cost - cost.toInt()).toStringAsFixed(0),
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFeatures: [FontFeature.superscripts()],
            ),
          ),
        )
      ],
    );
  }
}
