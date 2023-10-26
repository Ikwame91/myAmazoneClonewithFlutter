// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_appbar.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_secondwidget.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_widget.dart';
import 'package:myown_amazone_clone/widgets/user_details.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CartScreenAppbar(),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: kAppBarHeight / 2,
                      ),
                      CartScreenWidget(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 10, bottom: 15),
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
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return CartScreenSecondWidget(
                        product: ProductModel(
                            url: 'assets/images/ClassicCamera.png',
                            productName:
                                'Laundry Detergent Dispenser 3 piece, 780z',
                            cost: 5,
                            discount: 45,
                            seller: '*: blackish white',
                            sellerUid: 'sellerUid',
                            rating: 6,
                            noOfRating: 4),
                      );
                    },
                    childCount: 5,
                  ),
                ),
              ],
            ),
            UserDetails(
              offset: 0,
            )
          ],
        ),
      ),
    );
  }
}
