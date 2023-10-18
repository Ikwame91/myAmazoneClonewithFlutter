// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCostWidget extends StatelessWidget {
  const CustomCostWidget({super.key, required this.color, required this.cost});
  final Color color;
  final double cost;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.translate(
          offset: const Offset(0, -5),
          child: Text(
            '\$',
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        Text(
          cost.toInt().toStringAsFixed(1),
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -5),
          child: Text(
            (cost - cost.toInt()).toStringAsFixed(0),
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
