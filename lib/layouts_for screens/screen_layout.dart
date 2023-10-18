// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController();
  int currentpage = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  changePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      currentpage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
            //Page view is a widget that allows us to pass a lot of
            //screens as possible for the children while remaining in the parent page
            body: PageView(
                //controller Allows us to change the screen of the page view
                controller: pageController,
                children: screens),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: Colors.grey[400]!,
                width: 2,
              ))),
              child: TabBar(
                  indicator: const BoxDecoration(
                      border: Border(
                    top: BorderSide(color: activeCyanColor, width: 4),
                  )),
                  onTap: changePage,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Icon(
                        Icons.home_outlined,
                        color:
                            currentpage == 0 ? activeCyanColor : Colors.black,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.account_circle_outlined,
                        color:
                            currentpage == 1 ? activeCyanColor : Colors.black,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.add_shopping_cart_outlined,
                        color:
                            currentpage == 2 ? activeCyanColor : Colors.black,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.menu,
                        color:
                            currentpage == 3 ? activeCyanColor : Colors.black,
                      ),
                    ),
                  ]),
            )),
      ),
    );
  }
}
