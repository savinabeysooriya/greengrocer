import 'package:flutter/material.dart';
import 'package:green_grocer/src/models/category.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "vegetables", image: "download.jpg"),
  Category(name: "vegetables", image: "download.jpg"),
  Category(name: "vegetables", image: "download.jpg"),
  Category(name: "vegetables", image: "download.jpg"),
  Category(name: "vegetables", image: "download.jpg"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      color: green,
                      boxShadow: [
                        BoxShadow(
                            color: green ,
                            offset: Offset(1,1),
                            blurRadius: 9
                        )
                      ],

                    ),
                    child: Padding(padding: EdgeInsets.all(4),
                      child: Image.asset("images/${categoriesList[index].image}", width: 100,),)
                ),
                SizedBox(height: 10,),
                CustomText(text:categoriesList[index].name, size: 15, color: black ,)
              ],
            ),
          );
        },
      ),
    );
  }
}
