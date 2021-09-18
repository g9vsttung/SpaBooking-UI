import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height,
        color: Colors.red[100],
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[child],
        ));
  }
}
