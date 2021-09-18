import 'package:flutter/material.dart';

class ServiceSpa extends StatelessWidget {
  String name = "";
  int begin = 0, end = 0;

  ServiceSpa(
      {required this.name, required this.begin, required this.end});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width * 0.4,
          height: size.width * 0.3,
          child: Image.asset("assets/images/spa1.png")
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.red[200],fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          "Price: \$$begin~$end",
          style: TextStyle(color: Colors.red[200]),
        )
      ],
    );
  }
}
