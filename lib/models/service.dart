
import 'package:spa_booking/models/spa.dart';

class Service{
  int id;
  String name;
  String cateType;
  double rate;
  double price;
  int sale;
  Spa spa;
  String image;

  Service(this.name,this.rate,this.price, this.cateType, this.sale,this.spa,this.id,this.image);

}