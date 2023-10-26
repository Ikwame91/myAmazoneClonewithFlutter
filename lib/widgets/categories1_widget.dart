import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/pages/results_screen.dart';
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
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultsScreen(query: categoriesList[index])));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(categoryLogos[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(categoriesList[index]),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
