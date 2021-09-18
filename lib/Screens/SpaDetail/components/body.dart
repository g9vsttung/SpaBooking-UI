import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spa_booking/Screens/SpaDetail/components/services.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //==================================================IMAGE
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
              ),
              items: [
                Image.asset(
                  "assets/images/spa4.png",
                  width: size.width * 1,
                ),
                Image.asset("assets/images/spa2.png", width: size.width * 1),
                Image.asset("assets/images/spa3.png", width: size.width * 1),
              ],
            ),
          ),
          //===================================================DETAILS
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ABC Spa",
                        style: TextStyle(
                            color: Colors.red[200],
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icons/love.png",
                            width: size.width * 0.1,
                          ))
                    ],
                  ),
                  Row(children: [
                    Image.asset(
                      "assets/icons/rating.png",
                      width: size.width * 0.45,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "(42 rates)",
                        style: TextStyle(color: Colors.red[200]),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.red[200],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "50 Hậu Giang,  P7, Q6",
                    style: TextStyle(
                        color: Colors.red[200],
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Services",
                    style: TextStyle(
                        color: Colors.red[200],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceSpa(name: "Massage", begin: 10, end: 50),
                      ServiceSpa(name: "Facial", begin: 10, end: 50)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceSpa(name: "Sauna", begin: 10, end: 50),
                      ServiceSpa(name: "Skin care", begin: 10, end: 50)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceSpa(name: "Hot stone", begin: 10, end: 50),
                      ServiceSpa(name: "Facial", begin: 10, end: 50)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
