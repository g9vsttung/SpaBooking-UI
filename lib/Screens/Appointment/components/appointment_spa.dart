import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';
import 'package:spa_booking/utils/constants.dart';

class AppointmentSpa extends StatelessWidget {
  String name = "", address = "", date = "", time = "", phone = "";
  String selected ;

  AppointmentSpa(
      {required this.name,
      required this.address,
      required this.date,
      required this.time,
      required this.phone,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthImage=size.width*0.35;
    double widthInfoText=size.width*0.5;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            // return SpaDetailScreen(lastPage: "appointment", searchKey: "",);
            return MainScreen();
          },
        ));
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color:ColorConstants.mainColor ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/images/spa3.png",
                        width: widthImage,fit: BoxFit.fill,height: 95
                      ),
                      Container(
                        width: widthImage,
                        height: 25,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      if (selected == "Past")
                        Text(
                          "finished",
                          style: TextStyle(
                              color: Colors.red,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        )
                      else
                        Text(
                          "waiting",
                          style: TextStyle(
                              color: Colors.red,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      width: widthInfoText,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                color: ColorConstants.textColorBold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Address: $address",
                            style: TextStyle(fontSize: 12, color: ColorConstants.textColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Date: $date",
                            style: TextStyle(fontSize: 12, color: ColorConstants.textColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Time: $time",
                            style: TextStyle(fontSize: 12, color: ColorConstants.textColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Phone: $phone",
                            style: TextStyle(fontSize: 12, color: ColorConstants.textColor),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 8,)
        ],
      ),

    );
  }
}
