import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Search/search_screen.dart';

class BottomBarSpaApp extends StatelessWidget {
  String selected="";
  Color colorSelected= Colors.white;
  Color colorNormal= Color.fromRGBO(87, 79, 79, 1);
  BottomBarSpaApp({required this.selected});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if(selected == "home")
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
            icon: Image.asset("assets/icons/home.png",color: colorSelected,),
            iconSize: size.width * 0.15,
          )
        else
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
            icon: Image.asset("assets/icons/home.png", color: colorNormal,),
            iconSize: size.width * 0.15,
          )
        ,
        //=============================================================APPOINTMENT
        if(selected == "appointment")
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AppointmentScreen(finished: false);
                },
              ));
            },
            icon: Image.asset("assets/icons/appointment.png",color: colorSelected,),
            iconSize: size.width * 0.15,
          )
        else
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AppointmentScreen(finished: false);
                },
              ));
            },
            icon: Image.asset("assets/icons/appointment.png", color: colorNormal,),
            iconSize: size.width * 0.15,
          )
        ,
        //=============================================================SPA
        if(selected == "spa")
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchScreen(searchKey: "Search");
                },
              ));
            },
            icon: Image.asset("assets/icons/spa.png",color: colorSelected,),
            iconSize: size.width * 0.15,
          )
        else
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchScreen(searchKey: "Search");
                },
              ));
            },
            icon: Image.asset("assets/icons/spa.png", color: colorNormal,),
            iconSize: size.width * 0.15,
          )
        ,
        //=============================================================TREATMENT
        if(selected == "treatment")
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
            icon: Image.asset("assets/icons/treatment.png",color: colorSelected,),
            iconSize: size.width * 0.15,
          )
        else
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
            icon: Image.asset("assets/icons/treatment.png", color: colorNormal,),
            iconSize: size.width * 0.15,
          )
        ,
        //=============================================================
        if(selected == "profile")
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
            icon: Image.asset("assets/icons/profile.png",color: colorSelected,),
            iconSize: size.width * 0.15,
          )
        else
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
            icon: Image.asset("assets/icons/profile.png", color: colorNormal,),
            iconSize: size.width * 0.15,
          )
      ],
    );
  }
}
