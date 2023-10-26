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

    double horizontalscrollbannerHeight = 200;

    return GestureDetector(
        onHorizontalDragEnd: (_) {
          if (currentBanner == (niceBanners.length - 1)) {
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
                Image.asset(
                  niceBanners[currentBanner],
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 0,
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
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: horizontalscrollbannerHeight,
              width: screenSize.width,
              color: backgroundColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getSmallAdWidget(
                      index: 0,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    getSmallAdWidget(
                      index: 1,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    getSmallAdWidget(
                      index: 2,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    getSmallAdWidget(
                      index: 3,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    getSmallAdWidget(
                      index: 4,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    getSmallAdWidget(
                      index: 5,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    getSmallAdWidget(
                      index: 7,
                      side: horizontalscrollbannerHeight,
                    ),
                    const SizedBox(
                      width: 10,
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
            color: Colors.black.withOpacity(0.7),
            spreadRadius: 4,
            blurRadius: 8,
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.asset(
                horizontalscrollbanner[index],
                height: 100,
                width: side,
              ),
            ),
            const Divider(
              thickness: 1, // Adjust the thickness of the divider as needed
              color: Colors.grey, // Change the divider color as needed
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                adItemNames[index],
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
