import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class CartScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CartScreenAppbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kAppBarHeight);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: kAppBarHeight,
      width: screenSize.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: backgroundGradient,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
      ),
    );
  }
}
