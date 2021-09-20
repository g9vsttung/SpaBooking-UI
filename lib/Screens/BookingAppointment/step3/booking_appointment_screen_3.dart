import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Screens/BookingAppointment/step3/components/body.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';

class BookingAppointmentScreen3 extends StatelessWidget {
  String lastPageOfDetail="";
  String searchKey="";
  BookingAppointmentScreen3({required this.lastPageOfDetail, required this.searchKey});
  @override
  Widget build(BuildContext context) {
    String title = "Select Services";
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TopBar.getAppBarHasBackIcon(
          size, context, title,
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SpaDetailScreen(lastPage: lastPageOfDetail, searchKey: searchKey,);
            },));
          }
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 20),
        child: Body(lastPageOfDetail: lastPageOfDetail, searchKey: searchKey,),
      ),
    );
  }
}
