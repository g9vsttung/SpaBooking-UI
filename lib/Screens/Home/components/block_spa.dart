import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/utils/constants.dart';

class BlockSpa extends StatelessWidget {
  //===============color
  Color colorTitle = Color.fromRGBO(190, 62, 62, 1);
  Color colorSale = Color.fromRGBO(197, 136, 39, 1);

  //===============data
  String lastPage = "home";

  //===============var
  String image = StrConstants.imgPath+"spa3.png";
  Service service;

  BlockSpa(
      {required this.service
      });

  @override
  Widget build(BuildContext context) {
    if(service.cateType=="Massage")
      image=StrConstants.imgPath+"massage.png";
    if(service.cateType=="Facial")
      image=StrConstants.imgPath+"facial1.png";
    if(service.cateType=="Sauna")
      image=StrConstants.imgPath+"sauna.png";
    if(service.cateType=="Hot stone therapy")
      image=StrConstants.imgPath+"hotStoneTherapy.png";
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SpaDetailScreen(
            lastPage: lastPage,
            searchKey: "",
            spa: service.spa,
            service: service,
          );
        }));
      },
      child: Padding(
          padding: EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (service.sale <=0)
                Container(
                  width: size.width * 0.35,
                  height: size.width * 0.25,
                  child: Image.asset(image),
                )
              else
                Container(
                    width: size.width * 0.35,
                    height: size.width * 0.25,
                    child: Stack(
                      children: [
                        Image.asset(image),
                        Text("Sale ${service.sale}%",
                            style: TextStyle(
                                backgroundColor: Colors.red[100],
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    width: size.width * 0.35,
                    child: Text(
                      service.name+" "+service.cateType,
                      maxLines: 1,
                      style: TextStyle(overflow: TextOverflow.ellipsis,
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/starColor.png", width: 18),
                      Text(service.rate.toString(),style: TextStyle(
                          fontSize: 12),),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Image.asset(
                        "assets/icons/location.png",
                        width: 18,
                        color: Color.fromRGBO(196, 196, 196, 1),
                      ),
                      Text("${service.distance} km",style: TextStyle(
                      fontSize: 12),),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/price.png",
                        width: 18,
                        color: Color.fromRGBO(33, 159, 13, 1),
                      ),
                      if(service.sale <=0)
                        Text(" \$${service.price}",style: TextStyle(
                        fontSize: 12),)
                      else
                            Text(
                              " \$${service.price}",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                    fontSize: 12
                                ),
                            ),
                    ],
                  )),
              if(service.sale >0)
                Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset(
                          StrConstants.iconPath+"salePrice.png",
                          width: 18,
                        ),
                          Text(
                            " \$${service.price*(100-service.sale)/100}",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12
                            ),
                          ),
                      ],
                    )),
            ],
          )),
    );
  }
}
