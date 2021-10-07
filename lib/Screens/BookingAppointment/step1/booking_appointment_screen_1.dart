import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/body.dart';
import 'package:spa_booking/models/spa.dart';

class BookingAppointmentScreen1 extends StatelessWidget {
  String lastPageOfDetail="";
  String searchKey="";
  Spa spa;
  BookingAppointmentScreen1({required this.lastPageOfDetail, required this.searchKey, required this.spa});
  @override
  Widget build(BuildContext context) {
    String title = "Select Date and Time";
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TopBar.getAppBarHasBackIcon(
        size, context, title,
          (){
            Navigator.pop(context);
          }
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 0),
        child: Body(lastPageOfDetail: lastPageOfDetail, searchKey: searchKey,spa: spa,),
      ),
    );
  }
}
