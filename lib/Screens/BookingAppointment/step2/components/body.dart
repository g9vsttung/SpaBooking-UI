import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/components/back_next_button.dart';
import 'package:spa_booking/Screens/BookingAppointment/step3/booking_appointment_screen_3.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';

class Body extends StatefulWidget {
  String lastPageOfDetail="";
  String searchKey="";
  Body({required this.lastPageOfDetail, required this.searchKey});
  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}



class _Body extends State<Body> {
  int selectedId=-1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              "Now we may help you?",
              style: TextStyle(
                color: Colors.red[200],
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      getServiceSelectButton("assets/icons/facialNormal.png", "Facial", size, 1),
                      SizedBox(height: 10,),
                      getServiceSelectButton("assets/icons/saunaNormal.png", "Sauna", size, 2),
                      SizedBox(height: 10,),
                      getServiceSelectButton("assets/icons/saunaNormal.png", "Sauna", size, 3),
                      SizedBox(height: 10,),
                    ],
                  ),
                  Column(
                    children: [
                      getServiceSelectButton("assets/icons/massageNormal.png", "Massage", size, 4),
                      SizedBox(height: 10,),
                      getServiceSelectButton("assets/icons/hotStoneTherapyNormal.png", "Hot stone therapy", size, 5),
                      SizedBox(height: 10,),
                      getServiceSelectButton("assets/icons/hotStoneTherapyNormal.png", "Hot stone therapy", size, 6),
                      SizedBox(height: 10,),
                    ],
                  )
                ],
              ),
            ),
            //=============BOTTOM
            Component.getActionStepButton(context,2,4,true, () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BookingAppointmentScreen3(lastPageOfDetail: widget.lastPageOfDetail,searchKey: widget.searchKey,);
              },));
            }
            )


          ],
        ),
    );
  }

  Widget getServiceSelectButton(String image, String text, Size size, int id) {
    if (id == selectedId)
      return GestureDetector(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.red[200],),
          width: size.width*0.4,
          height: size.width*0.4,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image,width: size.width*0.15,color: Colors.white,),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
              )
            ],

          ),
        ),
      );
    else
      return GestureDetector(
        onTap: (){
          setState(() {
            selectedId=id;
          });
        },
        child:Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              border: Border.all(
                  color: Colors.red.withOpacity(0.5)
              )
          ),
          width: size.width*0.4,
          height: size.width*0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image,width: size.width*0.15,color: Colors.red[200],),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red[200]
                ),
              )
            ],

          ),
        ) ,
      );
  }

}
