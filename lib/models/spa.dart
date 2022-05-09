import 'package:flutter/material.dart';
import 'package:spa_booking/models/feedback.dart';
import 'package:spa_booking/models/service.dart';
class Spa  {
  String name,address;
  double rate;
  double distance;
  int totalRate;
  String phone;
  String image;
  int id;
  String date="2021-10-12";
  String time="09:00";
  FeedbackModel feedback=FeedbackModel(content: "", rate: 0, improve: "");
  bool feedbacked=false;
  List<Service> services=[];
  Spa(this.id,this.name,this.rate,this.address,this.distance,this.totalRate,this.phone,this.image,[FeedbackModel? feedback]){
    if(feedback!=null)
      this.feedback=feedback;
  }
  List<Service> getByCate(String cate) {
    List<Service> result= [];
    result.addAll(services);
    result.removeWhere((x) => x.cateType != cate);
    return result;
  }
}