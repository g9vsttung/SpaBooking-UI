import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spa_booking/utils/constants.dart';

class DiscountBox extends StatelessWidget {
  Function() ontap;
  String discountName;
  String description;
  String from;
  String to;
  int selected;
  int discountPercent;
  int id;

  DiscountBox(
      {required this.ontap,
      required this.description,
      required this.discountName,
      required this.discountPercent,
      required this.from,
      required this.to,
      required this.selected,
      required this.id});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(

      children: [
        if (selected == id)
          GestureDetector(
            child: Container(
              width: size.width * 0.85,
              height: size.width * 0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.deepOrange,width: 2),
                  color: Color.fromRGBO(255, 214, 149, 1)),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Image.asset(
                    StrConstants.imgPath + "sale.png",
                    width: size.width * 0.25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: size.width*0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          discountName,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "From $from",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "To $to",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Discount: $discountPercent%",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        else
          GestureDetector(
            onTap: ontap,
            child: Container(
              width: size.width * 0.85,
              height: size.width * 0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Image.asset(
                    StrConstants.imgPath + "sale.png",
                    width: size.width * 0.25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: size.width*0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          discountName,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "From $from",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "To $to",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Discount: $discountPercent%",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ,SizedBox(height: 10,)
      ],
    );
  }
}
