// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/widgets/customButton.dart';
import 'package:myown_amazone_clone/widgets/custom_cost_widget.dart';

class CartScreenSecondWidget extends StatelessWidget {
  const CartScreenSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerheight = (screenSize.height * 0.35);
    double containerwidth = (screenSize.width * 0.35);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 0.35,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey[400] as Color,
              width: 3,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CustomCheckbox(),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: containerheight * 0.8,
                        width: containerwidth * 0.8,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child:
                                Image.asset('assets/images/ClassicCamera.png')),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ProductViewInfo(
                            productName:
                                'Laundry Detergent Dispenser 3 piece, 780z',
                            cost: 25,
                            otherInfo: '*black'),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 10),
                  child: Row(
                    children: [
                      CustomButton(
                          onPressed: () {},
                          color: Colors.grey[400]!,
                          width: 50,
                          height: 30,
                          child: Icon(Icons.remove)),
                      CustomButton(
                          onPressed: () {},
                          color: Colors.white,
                          width: 50,
                          height: 30,
                          child: Text('1')),
                      CustomButton(
                          onPressed: () {},
                          color: Colors.grey[400]!,
                          width: 50,
                          height: 30,
                          child: Icon(Icons.add)),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: CustomButton(
                            onPressed: () {},
                            color: Colors.white,
                            width: 80,
                            height: 35,
                            child: Text(
                              'Delete',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                      CustomButton(
                          onPressed: () {},
                          color: Colors.white,
                          width: 100,
                          height: 35,
                          child: Text(
                            'Save for later',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
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

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false; // Whether the checkbox is checked

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      transformHitTests: true,
      scale: 1.3,
      child: Checkbox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value as bool;
          });
        },
      ),
    );
  }
}

class ProductViewInfo extends StatelessWidget {
  const ProductViewInfo(
      {super.key,
      required this.productName,
      required this.cost,
      required this.otherInfo});
  final String productName;
  final double cost;
  final String otherInfo;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            productName,
            maxLines: 2,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 0.4,
                overflow: TextOverflow.ellipsis),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: CustomCostWidget(color: Colors.black, cost: cost),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              otherInfo,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
