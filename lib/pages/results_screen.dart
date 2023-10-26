import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/widgets/results_widget.dart';
import 'package:myown_amazone_clone/widgets/search_bar_widget.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.query});
  final String query;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const SearchBarWidget(
            isReadOnly: false, hasBackButon: true, showSignOutIcon: false),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Showing Results for  ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: query,
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 15,
                        childAspectRatio: 2 / 4,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return ResultsWidget(
                        product: ProductModel(
                            url: 'assets/images/rename.jpg',
                            productName:
                                'Laundry Detergent Dispenser 3 piece, 780z',
                            cost: 565,
                            discount: 45,
                            seller: '*: blackish white',
                            sellerUid: 'sellerUid',
                            rating: 2,
                            noOfRating: 4),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
