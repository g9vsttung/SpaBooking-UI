import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';

class Body extends StatefulWidget {
  String lastPageOfDetail="";
  String searchKey="";
  Body({required this.lastPageOfDetail, required this.searchKey});
  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}

class _Body extends State<Body> {
  int selectedId = -1;
  int selectedSpecialistId = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: size.width * 1,
            child: Text(
              "Choose Spa Personal Host",
              style: TextStyle(
                  color: Colors.red[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: size.height * 0.5,
            width: size.width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red[100]),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 1),
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 2),
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 3),
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 4),
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 5),
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 6),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: size.width * 1,
            child: Text(
              "Choose Specialist",
              style: TextStyle(
                  color: Colors.red[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng", 4.0, size, 1),
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng", 4.0, size, 2),
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng sadas", 4.0, size, 3),
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng", 4.0, size, 4),
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng", 4.0, size, 5),
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng", 4.0, size, 6),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //=============BOTTOM
          Component.getActionStepButton(context,3,4,true, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MainScreen();
            },));
          }
          )
        ],
      ),
    );
  }

  Widget getPersonalHost(String image, String text, Size size, int id) {
    if (id == selectedId)
      return GestureDetector(
        child: Container(
          color: Colors.red[200],
          child: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: ClipOval(
                    child: Image.asset(image, width: size.width * 0.15),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/starColor.png",
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons/starColor.png",
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons/starColor.png",
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons/starNoColor.png",
                          width: size.width * 0.05,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    else
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedId = id;
          });
        },
        child: Container(
          color: Colors.red[100],
          child: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: ClipOval(
                    child: Image.asset(image, width: size.width * 0.15),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/starColor.png",
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons/starColor.png",
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons/starColor.png",
                          width: size.width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons/starNoColor.png",
                          width: size.width * 0.05,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }

  Widget getSpecialist(
      String image, String text, double star, Size size, int id) {
    if (id == selectedSpecialistId)
      return GestureDetector(
        child: Container(
            color: Colors.red[100],
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ClipOval(
                      child: Image.asset(image, width: size.width * 0.15),
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/starColor.png",
                        width: size.width * 0.035,
                      ),
                      Text(
                        star.toString(),
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            )),
      );
    else
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedSpecialistId = id;
          });
        },
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: ClipOval(
                    child: Image.asset(image, width: size.width * 0.15),
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/starColor.png",
                      width: size.width * 0.035,
                    ),
                    Text(
                      star.toString(),
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}
