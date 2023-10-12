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
  _MoreScreenState() {}
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const CartScreenAppbar(),
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height / 2,
                child: const MoreScreenWidget(),
              ),
              const Divider(
                height: 10,
                thickness: 4,
                color: Colors.grey,
              ),
              MoreScreenDropDown()
            ],
          ),
        ),
      ),
    );
  }
}
