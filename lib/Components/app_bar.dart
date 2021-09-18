import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Login/login_screen.dart';

class TopBar {
  static AppBar getAppBar(Size size, BuildContext context) {
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
}
