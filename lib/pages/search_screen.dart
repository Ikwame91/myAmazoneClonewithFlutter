import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/widgets/search_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: SearchBarWidget(
          isReadOnly: false,
          hasBackButon: true,
          showSignOutIcon: false,
        ),
      ),
    );
  }
}
