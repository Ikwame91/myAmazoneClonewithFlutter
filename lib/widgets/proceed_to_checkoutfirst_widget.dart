// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/mini_description.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/pages/product_screen.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_secondwidget.dart';

class ProceeedToCheckoutFirstWidget extends StatelessWidget {
  const ProceeedToCheckoutFirstWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerheight = (screenSize.height * 0.35);
    double containerwidth = (screenSize.width * 0.35);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 0.24,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen(
                                  productModel: product,
                                  miniDescription: MiniDescription(
                                      color: 'Color :',
                                      product: product.sellerUid))));
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: containerheight * 0.5,
                          width: containerwidth * 0.8,
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset(product.url)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ProductViewInfo(
                                productName: product.productName,
                                cost: 45,
                                otherInfo: product.seller),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
