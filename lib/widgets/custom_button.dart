import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;
  const CustomMainButton(
      {super.key,
      required this.child,
      required this.color,
      required this.isLoading,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          fixedSize: Size(screenSize.width * 0.5, 40),
        ),
        onPressed: () {},
        child: child);
  }
}
