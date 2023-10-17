// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/constants.dart';
import 'package:myown_amazone_clone/widgets/cart_screen_appbar.dart';
import 'package:myown_amazone_clone/widgets/more_screen_dropdown_widget.dart';
import 'package:myown_amazone_clone/widgets/more_screen_widget.dart';
import 'package:myown_amazone_clone/widgets/personal_custom_category_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CartScreenAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MoreScreenWidget(),
            Divider(
              height: 10,
              thickness: 4,
              color: Colors.grey,
            ),
            MoreScreenDropDown(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 200,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2.2 / 3.5,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 15),
                    itemCount: categoriesList.length,
                    itemBuilder: (context, index) {
                      return PersonalCategoryWidget(index: index);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
