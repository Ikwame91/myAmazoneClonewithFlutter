// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldwidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const TextFieldwidget(
      {super.key,
      required this.title,
      required this.obscureText,
      required this.controller,
      required this.hintText});

  @override
  State<TextFieldwidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldwidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        TextField(
          obscureText: widget.obscureText,
          maxLines: 1,
          decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.grey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 1))),
        )
      ],
    );
  }
}
