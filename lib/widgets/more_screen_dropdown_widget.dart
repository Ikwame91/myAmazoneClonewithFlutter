// import 'package:flutter/material.dart';
// import 'package:myown_amazone_clone/utils/constants.dart';

// class MoreScreenDropDown extends StatefulWidget {
//   const MoreScreenDropDown({super.key});

//   @override
//   State<MoreScreenDropDown> createState() => _MoreScreenDropDownState();
// }

// class _MoreScreenDropDownState extends State<MoreScreenDropDown> {
//   String? _selectedVal = '';

//   _MoreScreenDropDownState() {
//     _selectedVal = shopByCategoryItems[0];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           DropdownButton(
//               value: _selectedVal,
//               items: shopByCategoryItems
//                   .map(
//                     (e) => DropdownMenuItem(
//                       value: e,
//                       child: Text(e),
//                     ),
//                   )
//                   .toList(),
//               onChanged: (val) {
//                 setState(() {
//                   _selectedVal = val as String;
//                 });
//               }),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class MoreScreenDropDown extends StatefulWidget {
  const MoreScreenDropDown({super.key});

  @override
  State<MoreScreenDropDown> createState() => _MoreScreenDropDownState();
}

class _MoreScreenDropDownState extends State<MoreScreenDropDown> {
  String? _selectedVal = '';

  _MoreScreenDropDownState() {
    _selectedVal = shopByCategoryItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedVal,
                  isExpanded: true,
                  items: shopByCategoryItems.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedVal = newValue;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
