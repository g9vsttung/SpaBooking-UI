import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Screens/AppointmentDetail/components/body.dart';
import 'package:spa_booking/Screens/BookingAppointment/bookingDetail/components/body.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';

class AppointmentDetailScreen extends StatelessWidget {
  Spa spa;
  String action="edit";
  AppointmentDetailScreen({required this.spa, String? action}){
    if(action!=null)
      this.action=action;
  }
  @override
  Widget build(BuildContext context) {
    String title = "Booking Detail";
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TopBar.getAppBarHasBackIcon(
          size, context, title,
              (){
            Navigator.pop(context);
          }
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
        child: BodyAppointmentDetail(spa: spa,action: action,),
      ),
    );
  }
}
