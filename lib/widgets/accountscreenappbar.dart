import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class AccountScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const AccountScreenAppbar({super.key});
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.network(
              amazonLogo,
              height: kAppBarHeight * 0.5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                iconSize: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
