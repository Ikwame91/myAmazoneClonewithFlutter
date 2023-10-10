import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/widgets/search_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  // Function to dismiss the keyboard
  void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus(); // This will dismiss the keyboard
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        // Wrap the entire screen with GestureDetector
        onTap: () {
          dismissKeyboard(context); // Call the function to dismiss the keyboard
        },
        child: const Scaffold(
          appBar: SearchBarWidget(
            isReadOnly: false,
            hasBackButon: true,
            showSignOutIcon: false,
          ),
        ),
      ),
    );
  }
}
