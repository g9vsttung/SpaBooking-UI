import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Components/rounded_button.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';
import 'package:spa_booking/Screens/BookingAppointment/step1/booking_appointment_screen_1.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Search/search_screen.dart';
import 'package:spa_booking/Screens/SpaDetail/components/body.dart';

class SpaDetailScreen extends StatelessWidget {
  String searchKey="";
  String lastPage="";
  SpaDetailScreen({required this.lastPage, required this.searchKey});
  @override
  Widget build(BuildContext context) {
    String title="Detail";
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar.getAppBarHasBackIcon(
          size, context, title,
              (){
            if(lastPage == "home")
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen();
              },));
            else if(lastPage == "search")
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchScreen(searchKey: searchKey);
              },));
            else if(lastPage == "appointment")
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AppointmentScreen(finished: false,);
              },));
          }

      ),
      body: Body(),
      bottomNavigationBar: Container(
        child: RoundedButton(
            text: "Booking Appointment",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BookingAppointmentScreen1(lastPageOfDetail: lastPage,searchKey: searchKey,); //Routing Home Page in here
              }));
            },
            color: Colors.red.withOpacity(0.3),
            textColor: Colors.red),
      ),
    );
  }
}
