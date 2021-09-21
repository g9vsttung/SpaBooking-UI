import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';

class BlockSpaSale extends StatelessWidget {

  String lastPage="home";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SpaDetailScreen(lastPage: lastPage,searchKey: "",);
        }));
      },

      child: Padding(
          padding: EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.35,
                height: size.width * 0.25,
                child: Stack(
                  children: [
                    Image.asset("assets/images/spa3.png"),
                    Text("Sale 50%",
                        style: TextStyle(
                            backgroundColor: Colors.red[100],
                            color: Colors.red[300],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                )

              ),
              
              Padding(padding: EdgeInsets.only(top: 5), child: Text("ABC Spa")),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Image.asset("assets/images/star.png", width: 18),
                      Text("3.0"),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Image.asset("assets/images/location.png", width: 18),
                      Text("0.2 km"),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Image.asset("assets/images/price.png", width: 18),
                      Text("\$5 ~ \$250"),
                    ],
                  ))
            ],
          )),
    );
  }
}
