import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/widgets/custom_cost_widget.dart';
import 'package:myown_amazone_clone/widgets/rating_star_widget.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenSize.width / 3,
            child: Image.asset(product.url),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Text(
              product.productName,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                Flexible(child: RatingStar(rating: product.rating)),
                // Expanded(
                //   child: Text(
                //     product.noOfRating.toString(),
                //     style: const TextStyle(
                //         color: activeCyanColor, fontWeight: FontWeight.bold),
                //   ),
                // )
              ],
            ),
          ),
          SizedBox(
            height: 22,
            child: FittedBox(
              child: CustomCostWidget(
                color: Colors.red,
                cost: product.cost,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
