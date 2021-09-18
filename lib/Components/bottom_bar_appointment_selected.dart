import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Search/search_screen.dart';

class BottomBarAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MainScreen();
              },
            ));
          },
          icon: Image.asset("assets/icons/home.png"),
          iconSize: size.width * 0.15,
        ),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/appointmentSelected.png"),
            iconSize: size.width * 0.15),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchScreen(searchKey: "Search");
                },
              ));
            },
            icon: Image.asset("assets/icons/spa.png"),
            iconSize: size.width * 0.15),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/treatment.png"),
            iconSize: size.width * 0.15),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/profile.png"),
            iconSize: size.width * 0.15),
      ],
    );
  }
}
