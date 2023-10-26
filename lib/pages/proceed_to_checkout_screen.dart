// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_appbar.dart';
import 'package:myown_amazone_clone/widgets/proceed_to_checkoutfirst_widget.dart';

class ProceedToCheckoutScreen extends StatelessWidget {
  const ProceedToCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CartScreenAppbar(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                color: Colors.white,
                child: ProceeedToCheckoutFirstWidget(
                  product: ProductModel(
                      url: 'assets/images/ClassicCamera.png',
                      productName: 'Laundry Detergent Dispenser 3 piece, 780z',
                      cost: 5,
                      discount: 45,
                      seller: '*: blackish white',
                      sellerUid: 'sellerUid',
                      rating: 6,
                      noOfRating: 4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Add a new address',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
