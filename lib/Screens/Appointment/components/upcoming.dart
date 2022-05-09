import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spa_booking/Screens/AppointmentDetail/appointment_detail_screen.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';
class UpcomingServiceBox extends StatelessWidget{
  Spa spa;
  Function() cancelFunc;
  UpcomingServiceBox({required this.spa, required this.cancelFunc});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 10, right: 10,top: 10, bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: ColorConstants.mainColor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(StrConstants.imgPath+spa.image,width: size.width*0.28,height: size.width*0.28,fit: BoxFit.fill,),
                  SizedBox(width: 8,),
                  Container(
                    width: size.width*0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          spa.name,
                          style: TextStyle(
                              color: ColorConstants.textColorBold,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Address: "+spa.address,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Date: "+spa.date,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Time: "+spa.time,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Phone: "+spa.phone,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                      ],
                    ),
                  )

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 70,
                    height: 22,
                    child: RaisedButton(
                      onPressed: cancelFunc,
                      color: Colors.black45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 70,
                    height: 22,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return AppointmentDetailScreen(spa: spa);
                        },));
                      },
                      color: ColorConstants.mainColorBold,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Text(
                        "Detail",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }

}