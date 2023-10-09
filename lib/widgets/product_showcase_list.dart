import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';

class ProductShowCaseListView extends StatelessWidget {
  const ProductShowCaseListView({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // Calculate a reasonable default height based on the screen height
    ui.Size screenSize = MediaQuery.of(context).size;
    double defaultHeight = screenSize.height * 0.5;
    return SizedBox(
      height: defaultHeight,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: defaultHeight,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/cameraimage.png'),
                    )),
              ),
            );
          }),
    );
  }
}
    // return Container(
    //   width: double.infinity,
    //   color: Colors.grey[400],
    //   padding: EdgeInsets.all(8.0), // Add padding for better appearance
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         title,
    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    //       ),
    //       SizedBox(height: 8.0), // Add some space below the title
    //       Container(
    //         height: defaultHeight, // Set a reasonable default height
    //         child: GridView.builder(
    //           physics:
    //               NeverScrollableScrollPhysics(), // Disable GridView scrolling
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2,
    //           ),
    //           itemCount: children.length,
    //           itemBuilder: (context, index) {
    //             return Padding(
    //               padding: const EdgeInsets.all(
    //                   8.0), // Add padding around grid items
    //               child: Container(
    //                 color: Colors.pink[100],
    //               ),
    //             );
    //           },
    //         ),
    //       ),
    //     ],
    //   ),
    // );
 

// class ProductShowCaseListView extends StatelessWidget {
//   const ProductShowCaseListView(
//       {super.key, required this.title, required this.children});
//   final String title;
//   final List<Widget> children;
//   @override
//   Widget build(BuildContext context) {
//     ui.Size screenSize = MediaQuery.of(context).size;
//     double height = screenSize.height / 4;
//     double titleheight = 25;
//     return Container(
//       height: height,
//       width: screenSize.width,
//       color: Colors.grey[400],
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             children: [
//               Text(
//                 title,
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
