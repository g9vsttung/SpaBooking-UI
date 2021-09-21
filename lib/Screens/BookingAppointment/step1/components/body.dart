import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/booking_appointment_screen_1.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/BookingAppointment/step2/booking_appointment_screen_2.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';

class Body extends StatefulWidget {
  String lastPageOfDetail="";
  String searchKey="";
  Body({required this.lastPageOfDetail,required this.searchKey});
  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}



class _Body extends State<Body> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime= TimeOfDay.now();
  String time = "";
  selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  selectTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedTime = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  //===============================SELECT DATE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Date: ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${selectedDate.toLocal()}".split(" ")[0],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      FlatButton(
                        onPressed: () {
                          selectDate();
                        },
                        child: Text(
                          "Set date",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        color: Colors.red[300],
                      )

                    ],
                  ),
                  SizedBox(height: size.height * 0.05,),
                  //===============================SELECT TIME
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Time: ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${selectedTime.toString().split("(")[1].split(")")[0]}",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      FlatButton(
                        onPressed: () {
                          selectTime();
                        },
                        child: Text(
                          "Set time",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        color: Colors.red[300],
                      )

                    ],
                  ),
                ],
              ),
            ),


            //===================================BOTTOM
            Component.getActionStepButton(context,1,4,false, () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BookingAppointmentScreen2(lastPageOfDetail: widget.lastPageOfDetail, searchKey: widget.searchKey,);
              },));
            }
            )


          ],
        ),
    );
  }

  Widget getTimeSelectButton(String txtTime) {
    if (time == txtTime)
      return FlatButton(
          onPressed: null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: Colors.black,
              width: 1
            )
          ),
          disabledColor: Colors.red[100],
          child: Text(txtTime, style: TextStyle(fontSize: 16),)
      );
    else
      return FlatButton(
          onPressed: () {
            this.setState(() {
              time=txtTime;
            });
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                  color: Colors.black,
                  width: 1
              )
          ),
          color: Colors.white,
          child: Text(txtTime, style: TextStyle(fontSize: 16),)
      );
  }

}
