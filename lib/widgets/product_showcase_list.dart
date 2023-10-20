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
    double defaultHeight = screenSize.height * 0.4;
    return GestureDetector(
      onTap: () {},
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
                child: Container(
                  height: defaultHeight,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(11),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/cameraimage.png'),
                      )),
                ),
              );
            }),
      ),
    );
  }
}
