import 'package:flutter/material.dart';
import 'package:green_grocer/src/models/farmers.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Farmer> farmersList = [
  Farmer(name: "Mr.David", rating: 4.8, wishList: true, image: "download.jpg"),
  Farmer(name: "Mr.David", rating: 4.3, wishList: false, image: "download.jpg"),
  Farmer(name: "Mr.David", rating: 4.2, wishList: true, image: "download.jpg"),
  Farmer(name: "Mr.David", rating: 4.7, wishList: true, image: "download.jpg"),
];

class TopFarmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection:Axis.horizontal ,
          itemCount: farmersList.length,
          itemBuilder: (_, index){
            return Padding(padding: EdgeInsets.all(8),
              child:Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: grey ,
                          offset: Offset(8,5),
                          blurRadius: 4
                      )
                    ]
                ),

                child:Column(
                  children: <Widget>[
                    Image.asset("images/${farmersList[index].image}", height: 140, width: 140,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: farmersList[index].name),
                        ),

                        Padding(padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(20) ,
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: grey ,
                                      offset: Offset(1,1),
                                      blurRadius: 4
                                  )
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: farmersList[index].wishList ? Icon(
                                Icons.favorite, color: red, size:18
                                ,) : Icon(
                                Icons.favorite_border, color: red, size:18
                              ,),
                            ),
                          ),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: CustomText(text: farmersList[index].rating.toString() , color:black, size:14 ,),
                            ),
                            SizedBox(width: 2,),
                            Icon(Icons.star, color: red, size: 16,),
                            Icon(Icons.star, color: red, size: 16,),
                            Icon(Icons.star, color: red, size: 16,),
                            Icon(Icons.star, color: red, size: 16,),
                            Icon(Icons.star, color: grey, size: 16,),
                          ],
                        ),
                      ],
                    )
                  ],
                ) ,
              ) , );
          }),
    );
  }
}
