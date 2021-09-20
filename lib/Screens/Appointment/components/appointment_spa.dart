import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';

class AppointmentSpa extends StatelessWidget {
  String name = "", address = "", date = "", time = "", phone = "";
  bool finished = false;

  AppointmentSpa(
      {required this.name,
      required this.address,
      required this.date,
      required this.time,
      required this.phone,
      required this.finished});

  @override
  Widget build(BuildContext context) {
    String status = "";
    Size size = MediaQuery.of(context).size;
    double widthImage=size.width*0.4;
    double widthInfoText=size.width*0.5;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SpaDetailScreen(lastPage: "appointment", searchKey: "",);
          },
        ));
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/spa3.png",
                  width: widthImage,
                ),
                Container(
                  width: widthImage,
                  height: 25,
                  color: Colors.white.withOpacity(0.5),
                ),
                if (finished)
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
                          color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Address: $address",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Date: $date",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Time: $time",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Phone: $phone",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
