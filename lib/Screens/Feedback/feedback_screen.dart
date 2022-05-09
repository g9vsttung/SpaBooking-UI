import 'package:flutter/material.dart';
import 'package:spa_booking/Components/app_bar.dart';
import 'package:spa_booking/Screens/Feedback/components/body.dart';
class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "Feedback";
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: TopBar.getAppBarHasBackIcon(
          size, context, title,
              (){
            Navigator.pop(context);
          }
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 0),
        child: BodyFeedback(),
      ),
    );
  }
}