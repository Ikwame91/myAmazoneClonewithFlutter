import 'package:flutter/material.dart';

class CustomDesignedContainer extends StatelessWidget {
  const CustomDesignedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Container(
        height: screenSize.height * 0.32,
        width: screenSize.width / 2.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.yellow, width: 5),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: screenSize.height * 0.2,
                decoration:
                    const BoxDecoration(color: Color(0xFFDD8C5E), boxShadow: [
                  BoxShadow(
                    color: Color(0xFFDD8C5E),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 5,
                  )
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 10),
              child: Divider(
                thickness: 3,
                height: 2,
                color: Colors.grey,
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Grapefruit',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
