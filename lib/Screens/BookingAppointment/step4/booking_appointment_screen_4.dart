import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Screens/BookingAppointment/step4/components/body.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';
import 'package:spa_booking/models/spa.dart';

class BookingAppointmentScreen4 extends StatelessWidget {
  String lastPageOfDetail="";
  String searchKey="";
  Spa spa;
  BookingAppointmentScreen4({required this.lastPageOfDetail, required this.searchKey, required this.spa});
  @override
  Widget build(BuildContext context) {
    String title = "Choose Spa Personal Host";
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TopBar.getAppBarHasBackIcon(
          size, context, title,
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SpaDetailScreen(lastPage: lastPageOfDetail, searchKey: searchKey, spa: spa,);
            },));
          }
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Body(lastPageOfDetail: lastPageOfDetail, searchKey: searchKey,spa: spa,),
      ),
    );
  }
}
