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
  late FocusNode focusNode;
  bool isInFocus = false;
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          isInFocus = true;
        });
      } else {
        setState(() {
          isInFocus = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final boxShadow = BoxShadow(
      color: Colors.orange.withOpacity(0.4),
      blurRadius: 8,
      spreadRadius: 2,
    );
    final boxShadow2 = BoxShadow(
      color: Colors.black.withOpacity(0.5),
      blurRadius: 8,
      spreadRadius: 2,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Container(
          decoration:
              BoxDecoration(boxShadow: [isInFocus ? boxShadow : boxShadow2]),
          child: TextField(
            controller: widget.controller,
            focusNode: focusNode,
            obscureText: widget.obscureText,
            maxLines: 1,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 1))),
          ),
        )
      ],
    );
  }
}
