
import 'package:flutter/material.dart';
import 'package:spa_booking/Components/rounded_button.dart';
import 'package:spa_booking/Components/rounded_input_field.dart';
import 'package:spa_booking/Components/rounded_password_field.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Login/components/background.dart';
import 'package:spa_booking/Screens/Login/components/or_divider.dart';
import 'package:spa_booking/Screens/Login/login_screen.dart';
import 'package:spa_booking/Screens/SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hi There!",
            style: TextStyle(
                fontFamily: 'Roboto',
                letterSpacing: 1.2,
                color: Colors.white,
                fontSize: 20),
          ),
          Text(
            "Let’s Get Started",
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
          RoundedInputField(
              hintText: "Email",
              icon: Icons.mail_outline,
              onChanged: (value) {}),
          RoundedPasswordField(
            text: "Password",
          ),
          RoundedPasswordField(
            text: "Confirmed Password",
          ),
          SizedBox(height: size.width * 0.02),
          RoundedButton(
            text: "Continue",
            color: (Colors.red[200])!,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen(); //Routing Home Page in here
              }));
            },
            textColor: Colors.white,
          ),
          RoundedButton(
            text: "I have account already",
            color: (Colors.red[300])!,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen(); //Routing Home Page in here
              }));
            },
            textColor: Colors.white,
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/icons/facebook.png",width: size.width*0.22,),
              Image.asset("assets/icons/google.png",width: size.width*0.22,)
            ],
          )
        ],
      ),
    );
  }
}


