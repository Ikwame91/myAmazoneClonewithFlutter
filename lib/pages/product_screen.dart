// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/product_model.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/custom_designed_container.dart';
import 'package:myown_amazone_clone/widgets/rating_star_widget.dart';
import 'package:myown_amazone_clone/widgets/search_bar_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: const SearchBarWidget(
          isReadOnly: true, hasBackButon: true, showSignOutIcon: false),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kAppBarHeight / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Sponsored',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.productModel.productName,
                          style: TextStyle(
                            color: activeCyanColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      RatingStar(rating: widget.productModel.rating)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    widget.productModel.seller,
                    style: TextStyle(
                      color: activeCyanColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                ),
                Container(
                  color: Colors.grey[600],
                  height: screenSize.height / 3,
                  child: Swiper(
                      itemWidth: 400,
                      itemHeight: 400,
                      loop: true,
                      layout: SwiperLayout.DEFAULT,
                      duration: 1200,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(scrollImage[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        );
                      },
                      itemCount: scrollImage.length),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 15, bottom: 15),
                //   child: CustomCostWidget(
                //       color: activeCyanColor, cost: widget.productModel.cost),
                // ),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Divider(
                    height: 3,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CustomDesignedContainer(),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
