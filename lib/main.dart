import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Login/login_screen.dart';
import 'package:spa_booking/constants.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spa Booking',
      theme: ThemeData(
        primaryColor: kPrimaryBackgroudColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }

}


