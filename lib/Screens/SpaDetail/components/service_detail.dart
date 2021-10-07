import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/booking_appointment_screen_1.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';

class ServiceDetail extends StatelessWidget {
  Service service;
  String image;
  String searchKey="";
  String lastPage="";
  Spa spa;
  ServiceDetail({required this.service, required this.image,required this.lastPage, required this.searchKey, required this.spa});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String description = service.name +
        " " +
        service.cateType +
        " is your beauty care service. Make you feel comfortable, relieve stress after work.";

    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: ColorConstants.mainColor),
              width: size.width * 0.85,
              height: size.width * 0.3 / 4 * 3 + 30,
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (service.sale > 0)
                      Stack(
                        children: [
                          Image.asset(
                            StrConstants.imgPath + image,
                            width: size.width * 0.27,
                            height: size.width * 0.3 / 4 * 3,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "Sale ${service.sale}%",
                            style: TextStyle(
                                backgroundColor: Colors.red[100],
                                color: Colors.red,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    else
                      Image.asset(
                        StrConstants.imgPath + image,
                        width: size.width * 0.27,
                        height: size.width * 0.3 / 4 * 3,
                        fit: BoxFit.fill,
                      ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            service.name + " " + service.cateType,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.mainColorBold),
                          ),
                          Text(
                            description,
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.width * 0.3 / 4 * 3 + 30 - 10),
            child: Center(
              child: Container(
                width: size.width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width * 0.25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              width: 2, color: ColorConstants.mainColorBold),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (service.sale > 0)
                            Text(
                              "\$${service.price * (100 - service.sale) / 100}",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: ColorConstants.mainColorBold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          Text(
                            "\$${service.price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red,fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.width * 0.3 / 4 * 3 + 30 - 10),
            child: Center(
                child: Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BookingAppointmentScreen1(lastPageOfDetail: lastPage, searchKey: searchKey, spa: spa);
                  },));
                },
                color: ColorConstants.textColorBold,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Text(
                  "Book",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              height: 25,
              width: 70,
            )),
          )
        ],
      ),
    );
  }
}
