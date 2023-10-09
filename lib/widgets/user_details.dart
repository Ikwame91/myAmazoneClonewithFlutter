import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/model/user_detai_model.dart';
import 'package:myown_amazone_clone/utils/color_themes.dart';
import 'package:myown_amazone_clone/utils/constants.dart';

class UserDetails extends StatelessWidget {
  const UserDetails(
      {super.key, required this.offset, required this.userDetails});
  final double offset;
  final UserDetailsModel userDetails;
  @override
  Widget build(BuildContext context) {
    Size screens = MediaQuery.of(context).size;
    // Calculate the new top value for the container based on the offset
    double top = -offset / 3;
    // Limit the top value to ensure it doesn't go beyond 0 (visible area)
    top = top < 0 ? top : 0;
    return Positioned(
      top: top,
      child: Container(
        width: screens.width,
        height: kAppBarHeight / 2,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: lightBackgroundaGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Color(0xFF5F5D5D),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: screens.width * 0.7,
                  child: Text(
                    'Deliver to ${userDetails.name} - ${userDetails.address}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
