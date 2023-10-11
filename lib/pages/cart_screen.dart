// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_appbar.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ScrollController controller = ScrollController();
  double offset = 0;
  @override
  void initState() {
    //listens to any changes from the controller
    controller.addListener(() {
      setState(() {
        offset = controller.position.pixels;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CartScreenAppbar(),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    // UserDetails(
                    //   offset: 0,
                    //   userDetails: UserDetailsModel(name: 'Nkay', address: 'KNUST'),
                    // ),
                    Column(
                      children: [
                        CartScreenWidget(),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 10),
                              child: Text(
                                'Deselect all items',
                                style: TextStyle(
                                    letterSpacing: 0.4,
                                    fontWeight: FontWeight.w500,
                                    color: activeCyanColor,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
