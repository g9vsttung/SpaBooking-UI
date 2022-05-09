import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';
import 'package:spa_booking/Screens/EditAppointment/edit_appointment_screen.dart';
import 'package:spa_booking/Screens/Feedback/feedback_screen.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';

class BodyAppointmentDetail extends StatefulWidget {
  Spa spa;
  String action;

  BodyAppointmentDetail({required this.spa,required this.action});

  @override
  State<StatefulWidget> createState() {
    return _BodyAppointmentDetail();
  }
}

class _BodyAppointmentDetail extends State<BodyAppointmentDetail> {

  String x = "";
  double total = 0;
  int num = 7;
  List<String> servicesId = [];

  @override
  Widget build(BuildContext context) {
    total = 0;
    servicesId = [];
    for (Service x in widget.spa.services) {
      servicesId.add(x.id.toString());
    }
    //Size
    Size size = MediaQuery
        .of(context)
        .size;
    //calculate total
    for (Service service in widget.spa.services) {
      total += (service.price - service.price * service.sale / 100);
    }
    //calculate PM or AM
    if (int.parse(widget.spa.time.split(":")[0]) < 12 &&
        int.parse(widget.spa.time.split(":")[0]) >= 0) {
      x = "AM";
    } else {
      x = "PM";
    }
    //calculate num
    if (widget.spa.services.length <= num)
      for (Service service in widget.spa.services) {
        num -= 1;
      }
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Image.asset(StrConstants.imgPath + widget.spa.image,
                  width: size.width * 1,
                  height: size.width / 4 * 2.5,
                  fit: BoxFit.fill,)
            ),
            //===================================================DETAILS
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                widget.spa.services[0].spa.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (size.width - 24) * 0.7,
                  child: Text(
                    widget.spa.services[0].spa.address,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      StrConstants.iconPath + "phone.png",
                      width: (size.width - 24) * 0.1,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Date: ${widget.spa.date}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Time: ${widget.spa.time} $x",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Your Services",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(Service service in widget.spa.services)
                  createService(service),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: (size.width - 24) * 0.8,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.black45,
                            width: 2
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Text(
                "Total Price",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(
                "\$$total",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorConstants.textColorBold
                ),
              ),
            ),
            SizedBox(height: 25,),
            if(widget.action!="feedbacked")
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.4,
                  height: 45,
                  child:getActionButton(),
                )
              ],
            ),

            getFeedback(),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }

  Widget getActionButton() {
    if (widget.action=="feedback") {
      return RaisedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FeedbackScreen();
          },));
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        color: ColorConstants.textColorBold,
        child: Row(
          children: [
            Image.asset(StrConstants.iconPath+"feedback.png",width: 30,),
            SizedBox(width: 3,),
            Text(
              "Feedback",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ],
        ),
      );
    } else if(widget.action=="edit") {
      return RaisedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditAppointmentScreen(spa: widget.spa);
          },));
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        color: ColorConstants.textColorBold,
        child: Text(
          "Edit Date&Time",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      );
    } else {
      return Container();
    }
  }
  Widget getFeedback(){
    if(widget.action=="feedbacked") {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorConstants.mainColor,
          border: Border(
            left: BorderSide(
              color: Colors.black,
              width: 3,
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your Feedback",
                  style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                      "Rate: ",
                      style: TextStyle(
                          fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      widget.spa.feedback.rate.toString(),
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    Image.asset(StrConstants.iconPath+"starColor.png",width: 20,)
                  ],
                ),
                SizedBox(height: 5,),
                if(widget.spa.feedback.improve.isNotEmpty)
                Text(
                  "Suggestions for improvement :",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  maxLines: 4,
                ),
                if(widget.spa.feedback.improve.isNotEmpty)
                SizedBox(height: 5,),
                if(widget.spa.feedback.improve.isNotEmpty)
                Text(
                  widget.spa.feedback.improve,
                  style: TextStyle(
                      fontSize: 16
                  ),
                  maxLines: 4,
                ),
                if(widget.spa.feedback.content.isNotEmpty)
                  SizedBox(height: 5,),
                if(widget.spa.feedback.content.isNotEmpty)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Content: ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      widget.spa.feedback.content,
                      style: TextStyle(
                          fontSize: 16,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  Widget createService(Service service) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: ColorConstants.priceBeforeSaleColor,
                ))),
        child: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                service.name,
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConstants.mainColorBold,
                    fontWeight: FontWeight.bold),
              ),
              if (service.sale <= 0)
                Text(
                  "\$${service.price}",
                  style: TextStyle(fontSize: 14, color: Colors.red),
                )
              else
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "\$${service.price}",
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorConstants.priceBeforeSaleColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "\$${service.price - service.price * service.sale / 100}",
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
            ],
          ),
        ));
  }

  showMyAlertDialog(List<String> list) {
    Size size = MediaQuery
        .of(context)
        .size;

    Dialog dialog = Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.mainColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    StrConstants.iconPath + "success.png", width: 25,),
                  SizedBox(width: 10,),
                  Text("Editing Success",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: GestureDetector(
                  onTap: () {
                    setSessionData(servicesId);
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return AppointmentScreen(date: "", time: "",);
                    },));
                  },
                  child: Container(

                    child: Text(
                      "OK", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 20
                    ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,
    );
    Future<dynamic> futureValue = showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return dialog;
      },
    ).then((value) {
      Service x = value as Service;
      if (x != null) {
        setState(() {
          widget.spa.services.add(value);
        });
      }
    });
  }

  Future<void> setSessionData(List<String> list) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? oldList = prefs.getStringList("bought");
    oldList!.addAll(list);
    prefs.setStringList("bought", oldList);
  }


}
