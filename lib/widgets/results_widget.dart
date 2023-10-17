import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/widgets/custom_cost_widget.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: screenSize.width / 3,
          child: Image.asset(product.url),
        ),
        Row(
          children: [CustomCostWidget(color: Colors.red, cost: product.cost)],
        )
      ],
    );
  }
}
