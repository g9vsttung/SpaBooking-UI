import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      resizeToAvoidBottomInset: false,
    );
  }
}
