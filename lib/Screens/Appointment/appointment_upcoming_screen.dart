import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Components/bottom_bar.dart';
import 'package:spa_booking/Screens/Appointment/components/body.dart';
import 'package:spa_booking/models/feedback.dart';
class AppointmentScreen extends StatelessWidget{
  String date,time;
  bool canceled=false;
  bool hasFeedback=false;
  FeedbackModel feedback=FeedbackModel(content: "", rate: 0, improve: "");
  AppointmentScreen({required this.date,required this.time, bool? cancel,FeedbackModel? fb}){
    if(cancel!=null)
      canceled=cancel;
    if(fb!=null) {
      hasFeedback = true;
      feedback=fb;
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar.getAppBarLocation(size, context),
      body: getBody(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red[100],
        child: BottomBarSpaApp(selected: "appointment",),
      ),
    );
  }
  Widget getBody(){
    if(!canceled)
      if(hasFeedback)
        return BodyAppointment(date: date,time: time,fb: feedback,);
      else
        return BodyAppointment(date: date,time: time,);
    else
      if(hasFeedback)
        return BodyAppointment(date: date,time: time,fb: feedback,cancel: true,);
      else
        return BodyAppointment(date: date,time: time,cancel: true);
  }

}