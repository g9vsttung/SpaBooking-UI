import 'package:flutter/material.dart';
import 'package:spa_booking/Components/rounded_button.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/SpaDetail/components/body.dart';

class SpaDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Stack(
            alignment: Alignment.centerLeft,
            children: [

          Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Detail",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red[300]
                      ),
                    ),
                  )
                ],
              ),

          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset("assets/icons/back.png",width: size.width*0.07,)),
        ]),
        backgroundColor: Colors.red[100],
      ),
      body: Body(),
      bottomNavigationBar: Container(
        child: RoundedButton(
            text: "Booking Appointment",
            press: () {},
            color: Colors.red.withOpacity(0.3),
            textColor: Colors.red),
      ),
    );
  }
}
