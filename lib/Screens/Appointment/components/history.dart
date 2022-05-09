

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:spa_booking/Screens/AppointmentDetail/appointment_detail_screen.dart';
import 'package:spa_booking/models/feedback.dart';

import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';

class HistoryServiceBox extends StatelessWidget {
  Spa spa;
  bool cancel;
  String action;
  bool feedbacked=false;
  FeedbackModel feedback=FeedbackModel(content: "", rate: 0, improve: "");
  HistoryServiceBox({required this.spa, required this.cancel,required this.action, FeedbackModel? feedback}){


    if(feedback!=null){
      this.feedback=feedback;
      this.feedbacked=true;
    }

  }

  @override
  Widget build(BuildContext context) {
    Color colorBackground = ColorConstants.mainColor;
    Color colorStatus = ColorConstants.mainColorBold;
    Color colorText = Color.fromRGBO(144, 0, 0, 1);
    String status = "finished";
    if (cancel) {
      colorBackground = Color.fromRGBO(239, 239, 239, 1);
      colorStatus = Color.fromRGBO(196, 196, 196, 1);
      colorText = Colors.black;
      status = "canceled";
    }
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AppointmentDetailScreen(spa: spa,action: action);
            },));
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: colorBackground),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        StrConstants.imgPath+spa.image,
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: size.width * 0.55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              spa.name,
                              style: TextStyle(
                                  color: ColorConstants.textColorBold,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Address: " + spa.address,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Date: " + spa.date,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Time: " + spa.time,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Phone: " + spa.phone,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            if(!cancel)
                              if(feedbacked)
                                Text(
                                  "Feedbacked",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                                  overflow: TextOverflow.ellipsis,
                                )
                              else
                                Text(
                                  "Not Yet Feedbacked",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                                  overflow: TextOverflow.ellipsis,
                                ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                    ),
                    color: colorStatus,
                  ),

                  child: Center(
                    child: Text(
                      status,
                      style: TextStyle(
                          color: colorText, fontStyle: FontStyle.italic),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

}
