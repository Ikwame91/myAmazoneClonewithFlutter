import 'package:flutter/material.dart';

class AccountScreenButton extends StatefulWidget {
  const AccountScreenButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _AccountScreenButtonState createState() => _AccountScreenButtonState();
}

class _AccountScreenButtonState extends State<AccountScreenButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
            // Add your onPressed logic here
          },
          child: Container(
            width: screenSize.width / 2.25,
            height: 60,
            decoration: BoxDecoration(
              color: isSelected ? Colors.grey[100] as Color : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: isSelected ? Colors.grey[100] as Color : Colors.grey,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}




// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class AccountScreenButton extends StatelessWidget {
//   const AccountScreenButton({super.key, required this.text});
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 10, right: 10),
//           child: Container(
//             width: screenSize.width / 2.25,
//             height: 60,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(50),
//                 border: Border.all(color: Colors.grey, width: 2)),
//             child: Center(
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: Colors.black, // Text color
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
