import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class BannerScrollWidget extends StatefulWidget {
  const BannerScrollWidget({super.key});

  @override
  State<BannerScrollWidget> createState() => _BannerScrollWidgetState();
}

class _BannerScrollWidgetState extends State<BannerScrollWidget> {
  int currentBanner = 0;

  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;

    double bannerContainerHeight = 200;

    return GestureDetector(
        onHorizontalDragEnd: (_) {
          if (currentBanner == (largeBanners.length - 1)) {
            currentBanner = -1;
          }
          setState(() {
            currentBanner++;
          });
        },
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  largeBanners[currentBanner],
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 0,

//  Container(
//                 decoration: BoxDecoration(boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.6),
//                     blurRadius: 8,
//                     spreadRadius: 1,
//                     offset: const Offset(0, 5),
//                   )
//                 ]),

                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height / 8,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFE6DE98).withOpacity(0.5),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: const Offset(0, 120),
                      )
                    ]

                        //This shows a gradient shadow on the image at the bottom center and top left
                        // gradient: LinearGradient(
                        //   begin: Alignment.bottomCenter, // Updated
                        //   end: Alignment.topCenter, // Updated
                        //   colors: [
                        //     backgroundColor
                        //         .withOpacity(0.5), // Adjust opacity as needed
                        //     backgroundColor.withOpacity(0),
                        //   ],
                        // ),
                        ),
                  ),
                )
              ],
            ),
            Container(
              height: bannerContainerHeight,
              width: screenSize.width,
              color: backgroundColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getSmallAdWidget(
                      index: 0,
                      side: bannerContainerHeight,
                    ),
                    getSmallAdWidget(
                      index: 1,
                      side: bannerContainerHeight,
                    ),
                    getSmallAdWidget(
                      index: 2,
                      side: bannerContainerHeight,
                    ),
                    getSmallAdWidget(
                      index: 3,
                      side: bannerContainerHeight,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget getSmallAdWidget({required int index, required double side}) {
    return Container(
        height: side,
        width: side,
        decoration: ShapeDecoration(
          color: Colors.white,
          shadows: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 8),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  bannerContainer[index],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    adItemNames[index],
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
