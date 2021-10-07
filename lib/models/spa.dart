import 'package:flutter/material.dart';
import 'package:spa_booking/models/service.dart';
class Spa  {
  String _name,_address;
  double _rate;
  double _distance;
  int _totalRate;
  String _phone;
  // String _image;

  List<Service> _services=[];

  Spa(this._name,this._rate,this._address,this._distance,this._totalRate,this._phone);
  set name(name){_name=name;}
  set rate(rate){_rate=rate;}
  // set image(image){_image=image;}
  set totalRate(totalRate){_totalRate=totalRate;}
  set address(address){_address=address;}
  set services(services){_services=services;}
  set distance(distance){_distance=distance;}
  set phone(phone){_phone=phone;}

  String get name => _name;
  String get phone => _phone;
  // String get image => _image;
  double get rate => _rate;
  int get totalRate => _totalRate;
  double get distance => _distance;
  String get address => _address;
  List<Service> get services => _services;

  List<Service> getByCate(String cate) {
    List<Service> result= [];
    result.addAll(services);
    result.removeWhere((x) => x.cateType != cate);
    return result;
  }
}