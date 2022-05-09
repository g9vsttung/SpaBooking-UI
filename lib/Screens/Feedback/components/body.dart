import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spa_booking/Components/pick_function_button.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';
import 'package:spa_booking/models/feedback.dart';
import 'package:spa_booking/utils/constants.dart';

class BodyFeedback extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BodyFeedback();
  }
}

class _BodyFeedback extends State<BodyFeedback> {
  int selectedRate = 0;
  String selectedReason="";
  bool completed=false;
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    if(selectedRate != 0)
      completed=true;
    else
      completed=false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
        "Rate your Experience",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          ),
        ),
        const SizedBox(
        height: 10,
        ),
        const Text(
        "Are you satisfied with the Service ?",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 16,
          ),
        ),
        const SizedBox(
        height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int i=1;i<=selectedRate;i++)
              getStar(true, i),
            for(int i=1;i<=5-selectedRate;i++)
              getStar(false, selectedRate+i),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Tell us what can be improved ?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        getReason("Overall Service", size),
        SizedBox(height: 5,),
        getReason("Repair Quality", size),
        SizedBox(height: 5,),
        getReason("Customer Support", size),
        SizedBox(height: 5,),
        getReason("Other", size),
        SizedBox(height: 5,),
        SizedBox(height: 10,),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54,width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            // height: size.height*0.3,
            child: Center(
              child: TextField(
                  controller: controller,
                maxLines: 5,
                style: TextStyle(
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: "Tell us on how can we improve ...",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black26
                  ),
                  border: InputBorder.none
                ),

              ),
            ),
          ),
        ),
        SizedBox(height: 25,),
        Center(
          child: getSubmitButton(size),
        )


      ],
    );
  }
  Widget getSubmitButton(Size size){
    if(completed){
      return Center(
        child: Container(
          width: size.width*0.6,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            onPressed: (){
              FeedbackModel fb=FeedbackModel(content: controller.value.text, rate: selectedRate, improve: selectedReason);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AppointmentScreen(date: "2021-10-19", time: "09:00",fb: fb,);
              },));
            },
            color: ColorConstants.textColorBold,
            child: Text(
              "Submit",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
          ),
        ),
      );
    }else{
      return Container(
        width: size.width*0.6,
        height: 40,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          onPressed: (){},
          color: Colors.grey[400],
          child: Text(
            "Submit",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black54
          ),
          ),
        ),
      );
    }
  }
  Widget getReason(String reason,Size size){
    return Center(
      child: PickFuntionButton(text: reason, selected: selectedReason, func: (){
        setState(() {
          selectedReason=reason;
        });
      }, sizeButton: size.width*0.5),
    );
  }
  Widget getStar(bool light, int num) {
    if (light)
      return Row(
        children: [
          GestureDetector(onTap: () {
            setState(() {
              selectedRate = num;
            });
          },
              child: Image.asset(
                StrConstants.iconPath + "starRating.png", width: 35,)),
          SizedBox(width: 5,)
        ],
      );
    else
      return Row(
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  selectedRate = num;
                });
              },
              child:
              Image.asset(
                StrConstants.iconPath + "starBorder.png", width: 35,
              )
          ),
          SizedBox(width: 5,)
        ],
      );
  }
}
