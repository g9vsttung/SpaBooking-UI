import 'package:flutter/material.dart';
import 'package:spa_booking/models/spa.dart';
class Service{
  String _name;
  String _cateType;
  double _rate;
  double _price;
  int _sale;
  double _distance=0;
  Spa _spa;
  Service(this._name,this._rate,this._price, this._cateType, this._sale,this._spa);
  set name(name){_name=name;}
  set rate(rate){_rate=rate;}
  set price(price){_price=price;}
  set distance(distance){_distance=distance;}
  set sale(sale){_sale=sale;}
  set cateType(cateType){_cateType=cateType;}
  set spa(spa){_spa=spa;}

  String get name => _name;
  String get cateType => _cateType;
  double get rate => _rate;
  double get price => _price;
  double get distance => _distance;
  int get sale => _sale;
  Spa get spa=>_spa;
}