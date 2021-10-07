import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/BookingAppointment/step3/booking_appointment_screen_3.dart';
import 'package:spa_booking/Screens/BookingAppointment/step4/booking_appointment_screen_4.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/models/spa.dart';

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
  String selected = "-1";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Now we may help you?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      getServiceSelectButton(
                          "assets/icons/facialNormal.png", "Facial", size),
                      SizedBox(
                        height: 10,
                      ),
                      getServiceSelectButton(
                          "assets/icons/saunaNormal.png", "Sauna", size),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      getServiceSelectButton(
                          "assets/icons/massageNormal.png", "Massage", size),
                      SizedBox(
                        height: 10,
                      ),
                      getServiceSelectButton(
                          "assets/icons/hotStoneTherapyNormal.png",
                          "Hot stone therapy",
                          size),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),

                ],
              ),
            ),
            //=============BOTTOM


          ],
        ),

            Component.getActionStepButton(context, true, () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return BookingAppointmentScreen3(
                    lastPageOfDetail: widget.lastPageOfDetail,
                    searchKey: widget.searchKey,
                    selectedServiceCategory: selected,
                    spa: widget.spa,
                  );
                },
              ));
            })

      ],
    )

    ;
  }

  Widget getServiceSelectButton(String image, String text, Size size) {
    if (text == selected)
      return GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.red[200],
          ),
          width: size.width * 0.4,
          height: size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: size.width * 0.15,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          ),
        ),
      );
    else
      return GestureDetector(
        onTap: () {
          setState(() {
            selected = text;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              border: Border.all(color: Colors.red.withOpacity(0.5))),
          width: size.width * 0.4,
          height: size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: size.width * 0.15,
                color: Colors.red[200],
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15, color: Colors.red[200]),
              )
            ],
          ),
        ),
      );
  }
}
