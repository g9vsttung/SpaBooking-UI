import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';

class SpaResult extends StatelessWidget {

  String searchKey="";
  String name = "", address = "", feature = "";
  int priceBegin = 0, priceEnd = 0, totalRate = 0;
  double rating = 0;

  SpaResult(
      {required this.name,
      required this.address,
      required this.feature,
      required this.priceBegin,
      required this.priceEnd,
      required this.rating,
      required this.totalRate,
      required this.searchKey});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthImage=size.width*0.4;
    double widthInfoText=size.width*0.5;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SpaDetailScreen(lastPage: "search",searchKey: searchKey,);
          },
        ));
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/spa3.png",
              width: widthImage,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                width: widthInfoText,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Address: $address",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Price: $priceBegin~$priceEnd",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Feature: $feature",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Rating: $rating ($totalRate rates)",
                      style: TextStyle(fontSize: 12, color: Colors.red[200]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
