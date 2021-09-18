import 'package:flutter/material.dart';
import 'package:spa_booking/Components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  String text;
  RoundedPasswordField({required this.text});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.72,
        child: TextFieldContainer(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key_outlined, color: Colors.red[100]),

              hintText: text,
              border: InputBorder.none,
            ),
          ),
        ));
  }
}
