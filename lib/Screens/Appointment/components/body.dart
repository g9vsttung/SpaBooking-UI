import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spa_booking/Components/pick_function_button.dart';
import 'package:spa_booking/Screens/Appointment/appointment_upcoming_screen.dart';
import 'package:spa_booking/Screens/Appointment/components/history.dart';
import 'package:spa_booking/Screens/Appointment/components/upcoming.dart';
import 'package:spa_booking/models/feedback.dart';
import 'package:spa_booking/models/list_spa.dart';
import 'package:spa_booking/models/service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spa_booking/models/spa.dart';
import 'package:spa_booking/utils/constants.dart';
import 'package:spa_booking/utils/sa.dart';

class BodyAppointment extends StatefulWidget {
  String date, time;
  bool canceled = false;
  bool hasFeedback=false;
  FeedbackModel feedback=FeedbackModel(content: "", rate: 0, improve: "");
  BodyAppointment({required this.date, required this.time, bool? cancel,FeedbackModel? fb}) {
    if (cancel != null) canceled = cancel;
    if(fb!=null) {
      hasFeedback = true;
      feedback=fb;
    }
  }

  @override
  State<StatefulWidget> createState() {
    return _BodyAppointment();
  }
}

class _BodyAppointment extends State<BodyAppointment> {
  Spa spa = Spa(1, "Keangnam Spa", 5.0, "50 Hậu giang, Q6", 0.2, 97,
      "0777997001", "x1.jpg");
  ListSpa list = ListSpa();
  bool first = true;
  List<Service> upcomingList = [];
  List<Spa> spaList = [];

  @override
  Widget build(BuildContext context) {
    if (first) {
      first = false;
      spa.services.add(Service(
          "Special",
          5.0,
          280.0,
          "Hot stone therapy",
          40,
          spa,
          20,
          "https://cdn.shopify.com/s/files/1/0050/4568/2243/files/hot_stone_massage_1024x1024.jpeg?v=1543972226"));
      spa.services.add(Service("Swedish", 4.0, 170.0, "Massage", 30, spa, 5,
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYkJYeXOmjUBryRYruaW6SXgIMipHu8Gn0VA&usqp=CAU"));
      spa.date = widget.date;
      spa.time = widget.time;
    }

    print(spaList.toString());
    Spa spa1 = Spa(3,"Senriver Spa",5.0,"83 Nguyễn Văn Luông, Q6",4.0,73,"0987654321","3.jpg");
    spa1.services
        .add(Service("Shoulder", 4.0, 90.0, "Massage", 30, spa1, 80, "36.jpg"));
    spa1.services.add(
        Service("Thai Massage", 3.0, 220.0, "Massage", 10, spa1, 81, "37.jpg"));
    spa1.services
        .add(Service("Original", 4.0, 89.0, "Facial", 0, spa1, 82, "38.jpg"));
    Spa spa2 = Spa(6, "Trà My Beauty Spa", 5.0, "27 Lê Văn Chí, Q6", 1.3, 19,
        "0933539713", "49.jpg");
    spa2.services.add(Service(
        "Special heirloom", 4.0, 210.0, "Facial", 0, spa2, 105, "59.jpg"));
    spa2.services
        .add(Service("Special", 4.0, 100.0, "Sauna", 0, spa2, 107, "60.jpg"));
  if(widget.hasFeedback) {
    spa1.feedbacked = true;
    spa1.feedback=widget.feedback;
  }
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Upcoming Appointments ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              if (!widget.canceled)
                UpcomingServiceBox(
                    spa: spa,
                    cancelFunc: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MyDialog(
                            date: widget.date,
                            time: widget.time,
                          );
                        },
                      );
                    })
              else
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "No Activity",
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                ),
              SizedBox(
                height: 12,
              ),
              Text(
                "History Appointments ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              if (widget.canceled)
                HistoryServiceBox(
                  spa: spa,
                  cancel: true,
                  action: "canceled",
                ),
              if(spa1.feedbacked)
              HistoryServiceBox(
                spa: spa1,
                cancel: false,
                action: "feedbacked",
                feedback: spa1.feedback,
              )
              else
                HistoryServiceBox(
                  spa: spa1,
                  cancel: false,
                  action: "feedback",
                )
              ,
              HistoryServiceBox(
                spa: spa2,
                cancel: true,
                action: "canceled",
              ),
            ],
          ),
        ));
  }
}

class MyDialog extends StatefulWidget {
  String date;
  String time;

  MyDialog({required this.date, required this.time});

  @override
  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  String selectedReason = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
        content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Tell us your reason ?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        PickFuntionButton(
          text: "Booked wrong Dates",
          selected: selectedReason,
          func: () {
            setState(() {
              selectedReason = "Booked wrong Dates";
            });
          },
          sizeButton: size.width * 0.55,
        ),
        SizedBox(
          height: 10,
        ),
        PickFuntionButton(
          text: "Booked wrong Services",
          selected: selectedReason,
          func: () {
            setState(() {
              selectedReason = "Booked wrong Services";
            });
          },
          sizeButton: size.width * 0.55,
        ),
        SizedBox(
          height: 10,
        ),
        PickFuntionButton(
          text: "Found better price",
          selected: selectedReason,
          func: () {
            setState(() {
              selectedReason = "Found better price";
            });
          },
          sizeButton: size.width * 0.55,
        ),
        SizedBox(
          height: 10,
        ),
        PickFuntionButton(
          text: "Other",
          selected: selectedReason,
          func: () {
            setState(() {
              selectedReason = "Other";
            });
          },
          sizeButton: size.width * 0.25,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 30,
              child: RaisedButton(
                  color: Colors.black45,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            if (selectedReason == "")
              Container(
                height: 30,
                child: RaisedButton(
                    color: Colors.grey[400],
                    onPressed: () {},
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              )
            else
              Container(
                height: 30,
                child: RaisedButton(
                    color: ColorConstants.mainColorBold,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return AppointmentScreen(
                              date: widget.date,
                              time: widget.time,
                              cancel: true);
                        },
                      ));
                    },
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              )
          ],
        ),
      ],
    ));
  }
}
