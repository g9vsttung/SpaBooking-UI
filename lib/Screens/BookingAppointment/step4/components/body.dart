import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/BookingAppointment/step5/booking_appointment_screen_5.dart';
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
  int selectedId = -1;
  int selectedSpecialistId = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 25,),
          Container(
            width: size.width * 1,
            child: Text(
              "Choose Spa Personal Host (optional)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: size.height * 0.5,
            width: size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red[100]),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getPersonalHost("assets/images/personalHost.png",
                        "Võ Nguyên Hồng", size, 1, 5),
                    getPersonalHost("assets/images/personalHost.png",
                        "Đào Thị Diễm", size, 2, 5),
                    getPersonalHost("assets/images/personalHost.png",
                        "Nguyễn Lý Kim", size, 3, 4),
                    getPersonalHost("assets/images/personalHost.png",
                        "Lê Thị Hoa", size, 4, 4),
                    getPersonalHost("assets/images/personalHost.png",
                        "Trần Kim Lý", size, 5, 4),
                    getPersonalHost("assets/images/personalHost.png",
                        "Nguyễn Ngọc Tường Vy", size, 6, 3),
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
              "Choose Specialist (optional)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
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
                    "Lê Bảo Ngọc", 5.0, size, 1),
                getSpecialist("assets/images/personalHost.png",
                    "Nguyễn Cẩm Tú", 4.7, size, 2),
                getSpecialist("assets/images/personalHost.png",
                    "Đào Thị Tuyết Mai", 4.4, size, 3),
                getSpecialist("assets/images/personalHost.png",
                    "Vưu Bích Hồng", 4.3, size, 4),
                getSpecialist("assets/images/personalHost.png",
                    "Trần Ngọc Bích", 4.3, size, 5),
                getSpecialist("assets/images/personalHost.png",
                    "Võ Nguyên Hồng", 4.0, size, 6),
              ],
            ),
          ),
          //=============BOTTOM
          Component.getActionStepButton(context, true, () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return BookingAppointmentScreen5(lastPageOfDetail: widget.lastPageOfDetail, searchKey: widget.searchKey, spa: widget.spa);
              },
            ));
          }),
          SizedBox(height: 20,)
        ],
      ),
    );
  }

  Widget getPersonalHost(
      String image, String text, Size size, int id, int rate) {
    if (id == selectedId) {
      return GestureDetector(
        child: Container(
          color: Color.fromRGBO(255, 214, 149, 1),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    Container(
                      width: size.width * 0.6 - 20,
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 1; i <= rate; i++)
                          Image.asset(
                            "assets/icons/starColor.png",
                            width: size.width * 0.05,
                          ),
                        for (int i = 1; i <= 5 - rate; i++)
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
    } else {
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
                    Container(
                      width: size.width * 0.6 - 20,
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 1; i <= rate; i++)
                          Image.asset(
                            "assets/icons/starColor.png",
                            width: size.width * 0.05,
                          ),
                        for (int i = 1; i <= 5 - rate; i++)
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
  }

  Widget getSpecialist(
      String image, String text, double star, Size size, int id) {
    if (id == selectedSpecialistId) {
      return GestureDetector(
        child: Container(
            width: size.width*0.35,
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
                          overflow: TextOverflow.ellipsis
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
    } else {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedSpecialistId = id;
          });
        },
        child: Container(
          width: size.width*0.35,
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
                      overflow: TextOverflow.ellipsis
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
}
