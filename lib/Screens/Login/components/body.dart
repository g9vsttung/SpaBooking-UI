import 'package:flutter/material.dart';
import 'package:spa_booking/Components/rounded_button.dart';
import 'package:spa_booking/Components/rounded_input_field.dart';
import 'package:spa_booking/Components/rounded_password_field.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Login/components/background.dart';

import 'or_divider.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();

}
class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/spa_girl.png",
              width: size.width * 0.8,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const Text(
              "Please, Log in.",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.width * 0.06),
            RoundedInputField(
                hintText: "Username",
                icon: Icons.assignment_ind_outlined,
                onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            SizedBox(height: size.width * 0.03),
            RoundedButton(
              text: "Continue",
              color: (Colors.red[300])!,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainScreen(); //Routing Home Page in here
                }));
              },
              textColor: Colors.white,
            ),
            const OrDivider(),
            RoundedButton(
              text: "Create An Account",
              color: (Colors.red[300])!,
              press: () {},
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}


