import 'package:flutter/material.dart';
import 'package:spa_booking/Components/search_bar.dart';
import 'package:spa_booking/Screens/Search/components/spa_search_result.dart';

class Body extends StatelessWidget {
  String searchKey = "";

  Body({required this.searchKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            for (int i = 1; i <= 6; i++)
              SpaResult(
                  name: "ABC Spa",
                  address: "50 Hậu Giang, P7, Q6",
                  feature: "Facial, Massage",
                  priceBegin: 10,
                  priceEnd: 50,
                  rating: 4.5,
                  totalRate: 45),
          ],
        ),
      ),
    );
  }
}
