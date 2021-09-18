import 'package:flutter/material.dart';
import 'package:spa_booking/Components/bottom_bar_appointment_selected.dart';
import 'package:spa_booking/Screens/Appointment/Components/body.dart';
class AppointmentScreen extends StatelessWidget{
  bool finished=false;
  AppointmentScreen({required this.finished});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(finished: finished),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red[100],
        child: BottomBarAppointment(),
      ),
    );
  }

}