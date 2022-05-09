import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Screens/EditAppointment/components/body.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';
class EditAppointmentScreen extends StatelessWidget {
  Spa spa;
  EditAppointmentScreen({required this.spa});
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
        child: BodyEditAppointment(spa: spa,),
      ),
    );
  }
}