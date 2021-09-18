import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:spa_booking/Components/search_bar.dart';
import 'package:spa_booking/Screens/Home/components/block_spa.dart';
import 'package:spa_booking/Screens/Home/components/block_spa_sale.dart';
import 'package:spa_booking/Screens/Search/search_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //=====================================================================================================SEARCH
          SearchBar(searchText: "Search"),
          //=================================================================================IMAGE
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,

              ),
              items: [
                Image.asset("assets/images/spa4.png",width: size.width*1,),
                Image.asset("assets/images/spa2.png",width: size.width*1),
                Image.asset("assets/images/spa3.png",width: size.width*1),
              ],
            ),
          ),
          SizedBox(height: 10,),
          //=====================================================================================================ICON function
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen(searchKey: "#Facial");
                  },));
                },
                icon: Image.asset("assets/icons/facial.png"),
                iconSize: size.width * 0.2,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen(searchKey: "#Massage");
                  },));
                },
                icon: Image.asset("assets/icons/massage.png"),
                iconSize: size.width * 0.2,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen(searchKey: "#Sauna");
                  },));
                },
                icon: Image.asset("assets/icons/sauna.png"),
                iconSize: size.width * 0.2,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen(searchKey: "#HotStoneTherapy");
                  },));
                },
                icon: Image.asset("assets/icons/hotStoneTherapy.png"),
                iconSize: size.width * 0.2,
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Column(children: <Widget>[
                //=========================================================================================================NEAR SPA
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Near by Spa",
                        style: TextStyle(
                            color: Colors.red[200],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SearchScreen(searchKey: "#SpaNearBy");
                          },));
                        },
                        child: Text(
                          "See more",
                          style: TextStyle(
                              color: Colors.red[200],
                              fontSize: 17,
                              fontStyle: FontStyle.italic),
                        ),
                      )
                      
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    for (int i = 1; i <= 4; i++) BlockSpa(),
                  ]),
                ),
                //=========================================================================================================SALE
                Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promotions",
                        style: TextStyle(
                            color: Colors.red[200],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SearchScreen(searchKey: "#Promotions");
                          },));
                        },
                        child: Text(
                          "See more",
                          style: TextStyle(
                              color: Colors.red[200],
                              fontSize: 17,
                              fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [for (int i = 1; i <= 4; i++) BlockSpaSale()]),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "High Rating",
                        style: TextStyle(
                            color: Colors.red[200],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SearchScreen(searchKey: "#HighRating");
                          },));
                        },
                        child: Text(
                          "See more",
                          style: TextStyle(
                              color: Colors.red[200],
                              fontSize: 17,
                              fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                      Row(children: [for (int i = 1; i <= 4; i++) BlockSpa()]),
                )
              ])),
        ],
      ),
    );
  }
}
