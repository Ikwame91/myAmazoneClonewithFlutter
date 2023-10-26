// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_appbar.dart';
import 'package:myown_amazone_clone/widgets/more_screen_dropdown_widget.dart';
import 'package:myown_amazone_clone/widgets/more_screen_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CartScreenAppbar(),
      body: ListView(
        children: const [
          MoreScreenWidget(),
          Divider(
            height: 10,
            thickness: 4,
            color: Colors.grey,
          ),
          MoreScreenDropDown(),
        ],
      ),
    );
  }
}
