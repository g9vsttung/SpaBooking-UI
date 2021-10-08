import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/BookingAppointment/step2/booking_appointment_screen_2.dart';
import 'package:spa_booking/Screens/BookingAppointment/step5/components/discount_box.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';

class Body extends StatefulWidget {
  String lastPageOfDetail = "";
  String searchKey = "";
  Spa spa;
  Body({required this.lastPageOfDetail, required this.searchKey, required this.spa});

  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}

class _Body extends State<Body> {
  int selected = -1;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 1,
            child: Text(
              "Choose your discount code (optional)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Container(
            height: size.height * 0.5,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red[100]),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DiscountBox(
                        ontap: (){
                          setState(() {
                            selected=1;
                          });
                        },
                        description: "Discount for your order when you book spa in q7",
                        discountName: "Happy time Discount",
                        discountPercent: 30,
                        from: "17/09/2021", to: "05/11/2021",
                        selected: selected,
                        id: 1,
                    ),
                    DiscountBox(
                      ontap: (){
                        setState(() {
                          selected=2;
                        });
                      },
                      description: "Discount for your order when you book the spa on weekdays, excluding holidays",
                      discountName: "Weekend Discount",
                      discountPercent: 15,
                      from: "17/09/2021", to: "05/11/2021",
                      selected: selected,
                      id: 2,
                    ),
                    DiscountBox(
                      ontap: (){
                        setState(() {
                          selected=3;
                        });
                      },
                      description: "Discount for your order",
                      discountName: "Try using Discount",
                      discountPercent: 20,
                      from: "17/09/2021", to: "05/11/2021",
                      selected: selected,
                      id: 3,
                    ),
                    DiscountBox(
                      ontap: (){
                        setState(() {
                          selected=4;
                        });
                      },
                      description: "Discount for your order",
                      discountName: "Come back Discount",
                      discountPercent: 35,
                      from: "17/09/2021", to: "05/11/2021",
                      selected: selected,
                      id: 4,
                    ),

                  ],
                ),
              ),
            ),
          ),

          //=============BOTTOM
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: RaisedButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Text(
                    "Finish",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                height: 45,
                width: size.width*0.6,
              ),
              SizedBox(height: 10,),
              Container(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return BookingAppointmentScreen2(lastPageOfDetail: widget.lastPageOfDetail, searchKey: widget.searchKey, spa: widget.spa);
                      },));
                    },
                    color: ColorConstants.textColorBold,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(StrConstants.iconPath+"plus.png",width: 16,),
                          SizedBox(width: 5,),
                          Text(
                            "Add Service",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                ),
                height: 35,
                width: size.width*0.4,
              ),
            ],
          )

        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      content:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(StrConstants.iconPath+"success.png",width: 40,),
              SizedBox(width: 5,),
              Text(
                "Booking Success",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen();
              },));
            },
          )
        ],
      )
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


}
