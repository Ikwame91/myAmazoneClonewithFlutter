import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/mini_description.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/pages/product_screen.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';

class ProductShowCaseListView extends StatelessWidget {
  const ProductShowCaseListView({
    Key? key,
    required this.productModel,
    required this.title,
  }) : super(key: key);
  final ProductModel productModel;
  final String title;
  @override
  Widget build(BuildContext context) {
    // Calculate a reasonable default height based on the screen height
    ui.Size screenSize = MediaQuery.of(context).size;
    double defaultHeight = screenSize.height * 0.4;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: activeCyanColor),
              ),
            ),
            const Text(
              'Show More',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: activeCyanColor),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductScreen(
                  productModel: productModel,
                  miniDescription: MiniDescription(
                      color: 'color', product: productModel.productName),
                ),
              ),
            );
          },
          child: SizedBox(
            height: defaultHeight,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        height: defaultHeight,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(11),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              productModel.url,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
