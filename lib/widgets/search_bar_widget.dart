import 'dart:ui' as ui; // Import 'dart:ui' with a different name.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/pages/search_screen.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class SearchBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isReadOnly;
  final bool hasBackButon;
  const SearchBarWidget(
      {Key? key, required this.isReadOnly, required this.hasBackButon})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kAppBarHeight);
  Future<void> _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    // Optionally, you can navigate to a different screen after signing out.
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => YourSignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    ui.Size screenSize = MediaQuery.of(context).size;

    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Colors.grey, width: 2));

//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.red, Colors.yellow],
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//         ),
//       ),
//     );
//   }
// }

    return Container(
      height: kAppBarHeight,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          hasBackButon
              ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back))
              : Container(),
          SizedBox(
              width: screenSize.width * 0.7,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: const Offset(0, 5),
                  )
                ]),
                child: TextField(
                  readOnly: isReadOnly,
                  onTap: () {
                    if (isReadOnly) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchScreen()));
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'search for something in Amazon.com',
                      fillColor: Colors.white,
                      filled: true,
                      border: border,
                      focusedBorder: border),
                ),
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.mic_none_outlined)),
          IconButton(
            onPressed: () {
              _signOut(
                  context); // Call the sign-out function when the button is pressed
            },
            icon: const Icon(Icons.logout), // Add your logout icon here
          ),
        ],
      ),
    );
  }
}
