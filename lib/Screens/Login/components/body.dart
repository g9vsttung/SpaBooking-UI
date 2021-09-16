import 'package:flutter/material.dart';
import 'package:spa_booking/Components/rounded_button.dart';
import 'package:spa_booking/Components/rounded_input_field.dart';
import 'package:spa_booking/Components/rounded_password_field.dart';
import 'package:spa_booking/Components/text_field_container.dart';
import 'package:spa_booking/Screens/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
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
          SizedBox(height: size.width*0.06),
          RoundedInputField(
              hintText: "Username",
              icon: Icons.assignment_ind_outlined,
              onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          SizedBox(height: size.width*0.03),
          RoundedButton(
            text: "Continue",
            color: (Colors.red[300])!,
            press: () {},
            textColor: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.1,
            child: Image.asset("assets/images/_or_.png", width: size.width*0.9,),
          ),
          RoundedButton(
            text: "Create An Account",
            color: (Colors.red[300])!,
            press: () {},
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
