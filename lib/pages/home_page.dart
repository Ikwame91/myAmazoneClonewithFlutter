// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/user_detai_model.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/banner_scrollwidget.dart';
import 'package:myown_amazone_clone/widgets/categories1_widget.dart';
import 'package:myown_amazone_clone/widgets/product_showcase_list.dart';
import 'package:myown_amazone_clone/widgets/search_bar_widget.dart';
import 'package:myown_amazone_clone/widgets/user_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Function to dismiss the keyboard
  void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus(); // This will dismiss the keyboard
  }

  ScrollController controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    //listens to any changes from the controller
    controller.addListener(() {
      setState(() {
        offset = controller.position.pixels;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;
    double defaultHeight = screenSize.height * 0.5;

    return SafeArea(
      child: GestureDetector(
        // Wrap the entire screen with GestureDetector
        onTap: () {
          dismissKeyboard(context); // Call the function to dismiss the keyboard
        },
        child: Scaffold(
          appBar: SearchBarWidget(
            //not actually to type into the textfield
            isReadOnly: true,
            hasBackButon: false, showSignOutIcon: true,
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    SizedBox(
                      height: kAppBarHeight / 2,
                    ),
                    FirstCategoryHorizontalScroll(),
                    BannerScrollWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return ProductShowCaseListView();
                        })
                  ],
                ),
              ),
              UserDetails(
                offset: offset,
                userDetails: UserDetailsModel(name: 'Nkay', address: 'Kumasi'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
