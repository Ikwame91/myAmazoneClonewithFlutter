import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class FirstCategoryHorizontalScroll extends StatelessWidget {
  const FirstCategoryHorizontalScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight,
      width: double.infinity,
      color: Colors.white,
      child: ListView.builder(
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(categoriesList[index]),
                )
              ],
            );
          }),
    );
  }
}
