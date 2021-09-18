import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Appointment/Components/appointment_spa.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';

class Body extends StatelessWidget {
  bool finished = false;

  Body({required this.finished});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(left: 10, right: 5, top: 20),
      child: Column(
        children: [
          Text(
            "Appointment",
            style: TextStyle(
                color: Colors.red[200],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatusButton("Upcoming", !finished, context, size),
              StatusButton("Past", finished, context, size)
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(!finished)
                      for(int i=1;i<=6;i++)
                        AppointmentSpa(name: "ABC Spa", address: "50 Hậu Giang, P7, Q6", date: "12/11/2021", time: "14:00", phone: "0901123938",finished: finished)
                    else
                      for(int i=1;i<=6;i++)
                        AppointmentSpa(name: "ABC Spa", address: "50 Hậu Giang, P7, Q6", date: "12/11/2021", time: "14:00", phone: "0901123938",finished: finished)
                  ],
                ),
              )
          )


        ],
      ),
    ));
  }
  
  Widget StatusButton(
      String text, bool active, BuildContext context, Size size) {
    if (!active)
      return Container(
          width: size.width * 0.3,
          height: 35,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AppointmentScreen(finished: !finished);
                },
              ));
            },
            child: Text(text),
            textColor: Colors.red[200],
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Color.fromRGBO(237, 153, 153, 1))),
          ));
    else
      return Container(
        width: size.width * 0.3,
        height: 35,
        child: RaisedButton(
          onPressed: null,
          child: Text(text),
          disabledTextColor: Colors.white,
          disabledColor: Colors.red[100],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Color.fromRGBO(237, 153, 153, 1))),
        ),
      );
  }
}
