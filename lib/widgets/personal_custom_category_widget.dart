import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class PersonalCategoryWidget extends StatelessWidget {
  const PersonalCategoryWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              spreadRadius: 2,
            )
          ]),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(categoryLogos[index]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categoriesList[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
