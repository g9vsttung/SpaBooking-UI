import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Login/login_screen.dart';

class TopBar {

  static AppBar getAppBarLocation(Size size, BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/location.png"),
            iconSize: size.width * 0.08,
          ),
          Container(
            width: size.width * 0.6,
            child: Text(
              "Quận 5, Phường 5, Tp Hồ Chí Minh ",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.red[200],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              icon: Image.asset("assets/icons/bell.png"),
              iconSize: size.width * 0.08),
        ],
      ),
    );
  }


  static AppBar getAppBarHasBackIcon(
      Size size, BuildContext context, String title, Function() func) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Stack(alignment: Alignment.centerLeft, children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[300],
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: func,
            icon: Image.asset(
              "assets/icons/back.png",
              width: size.width * 0.07,
            )),
      ]),
      backgroundColor: Colors.red[100],
    );
  }

}
