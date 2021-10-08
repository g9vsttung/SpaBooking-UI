import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/BookingAppointment/step4/booking_appointment_screen_4.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';

class Body extends StatefulWidget {
  String lastPageOfDetail = "";
  String searchKey = "";
  String selectedServiceCategory = "";
  Spa spa;
  Body(
      {required this.lastPageOfDetail,
      required this.searchKey,
      required this.selectedServiceCategory,
      required this.spa});

  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}

class _Body extends State<Body> {
  int selectedId = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Choose Service",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 20,),
        //===========scroll
        Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical, child: getListSerices()),
        ),
        //=============BOTTOM
        SizedBox(height: 25,),
        Component.getActionStepButton(context, true, () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return BookingAppointmentScreen4(
                lastPageOfDetail: widget.lastPageOfDetail,
                searchKey: widget.searchKey,
                spa: widget.spa,
              );
            },
          ));
        })
      ],
    );
  }

  Widget createService(String name, double price, int sale, int id) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: ColorConstants.priceBeforeSaleColor,
      ))),
      child: Padding(
        padding: EdgeInsets.only(top: 15,bottom: 10),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedId = id;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (selectedId == id)
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 14, color: ColorConstants.mainColorBold, fontWeight: FontWeight.bold),
                )
              else
                Text(
                  name,
                  style: TextStyle(fontSize: 14),
                ),
              if (sale <= 0)
                Text(
                  "\$$price",
                  style: TextStyle(fontSize: 14, color: Colors.red),
                )
              else
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "\$$price",
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorConstants.priceBeforeSaleColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "\$${price * sale / 100}",
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
            ],
          ),
        ),
      )

    );
  }

  Column getListSerices() {
    if (widget.selectedServiceCategory == "Massage") {
      List<Service> list = [];
      list.addAll(widget.spa.getByCate("Massage"));
      return Column(
        children: [
          for (int i = 0; i < list.length; i++)
            createService(list[i].name+" "+list[i].cateType, list[i].price, list[i].sale, i),
        ],
      );
    } else if (widget.selectedServiceCategory == "Facial") {
      List<Service> list = [];
      list.addAll(widget.spa.getByCate("Facial"));
      return Column(
        children: [
          for (int i = 0; i < list.length; i++)
            createService(list[i].name+" "+list[i].cateType, list[i].price, list[i].sale, i),
        ],
      );
    } else if (widget.selectedServiceCategory == "Sauna") {
      List<Service> list = [];
      list.addAll(widget.spa.getByCate("Sauna"));
      return Column(
        children: [
          for (int i = 0; i < list.length; i++)
            createService(list[i].name+" "+list[i].cateType, list[i].price, list[i].sale, i),
        ],
      );
    } else if (widget.selectedServiceCategory == "Hot stone therapy") {
      List<Service> list = [];
      list.addAll(widget.spa.getByCate("Hot stone therapy"));
      return Column(
        children: [
          for (int i = 0; i < list.length; i++)
            createService(list[i].name+" "+list[i].cateType, list[i].price, list[i].sale, i),
        ],
      );
    } else
      return Column();
  }
}
