import 'package:flutter/material.dart';
import 'package:spa_booking/Components/pick_function_button.dart';
import 'package:spa_booking/Screens/Appointment/Components/appointment_spa.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';
import 'package:spa_booking/utils/constants.dart';

class Body extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}
class _Body extends State<Body>{
  String selected="Upcoming";
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20),
          child: Column(
            children: [
              Text(
                "Appointment",
                style: TextStyle(
                    color: ColorConstants.textColorBold,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PickFuntionButton(
                      text: "Upcoming",
                      selected: selected,
                      func: () {
                        setState(() {
                          selected="Upcoming";
                        });
                      },
                    sizeButton: size.width*0.3,
                  ),
                  PickFuntionButton(
                      text: "Past",
                      selected: selected,
                      func: () {
                        setState(() {
                          selected="Past";
                        });
                      },
                    sizeButton: size.width*0.3,
                  )
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
                        if(selected == "Upcoming")
                          for(int i = 1; i <= 6; i++)
                            AppointmentSpa(name: "ABC Spa",
                                address: "50 Hậu Giang, P7, Q6",
                                date: "12/11/2021",
                                time: "14:00",
                                phone: "0901123938",
                                selected: selected)
                        else
                          for(int i = 1; i <= 6; i++)
                            AppointmentSpa(name: "ABC Spa",
                                address: "50 Hậu Giang, P7, Q6",
                                date: "12/11/2021",
                                time: "14:00",
                                phone: "0901123938",
                                selected: selected)
                      ],
                    ),
                  )
              )


            ],
          ),
        ));
  }
}
