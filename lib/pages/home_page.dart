// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/widgets/banner_scrollwidget.dart';
import 'package:myown_amazone_clone/widgets/categories1_widget.dart';
import 'package:myown_amazone_clone/widgets/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: SearchBarWidget(
            //not actually to type into thr textfield
            isReadOnly: true,
            hasBackButon: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                FirstCategoryHorizontalScroll(),
                BannerScrollWidget(),
              ],
            ),
          )),
    );
  }
}
