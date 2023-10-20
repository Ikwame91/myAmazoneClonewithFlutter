import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart'; // Import 'dart:ui' with a different name.

class SimpleProductWidget extends StatelessWidget {
  const SimpleProductWidget({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;
    double defaultHeight = screenSize.height * 0.4;
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        color: Colors.white,
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
    );
  }
}
//
