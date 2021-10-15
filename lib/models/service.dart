
import 'package:spa_booking/models/spa.dart';

class Service{
  String name;
  String cateType;
  double rate;
  double price;
  int sale;
  double distance=0;
  Spa spa;

  Service(this.name,this.rate,this.price, this.cateType, this.sale,this.spa);

}