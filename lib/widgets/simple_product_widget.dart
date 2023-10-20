import 'package:flutter/material.dart';

class SimpleProductWidget extends StatelessWidget {
  const SimpleProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/images/pexels.jpg'),
        ),
      ),
    );
  }
}
//
