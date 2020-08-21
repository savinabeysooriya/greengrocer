import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_grocer/src/widgets/categories.dart';
import 'package:green_grocer/src/widgets/custom_text.dart';
import 'package:green_grocer/src/widgets/top_farmers.dart';

import '../commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("What would you like?", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.notifications_none, size:40),onPressed: (){}),
                    Positioned(
                      top: 10,
                      right: 13,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey ,
                      offset: Offset(1,1),
                      blurRadius: 4
                    )
                  ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: green,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find your vegetables and fruits",
                      border: InputBorder.none
                    ),

                  ),
                  trailing: Icon(Icons.filter_list, color: green,),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            Categories(),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Top Farmers",size: 20, color: black ,weight:FontWeight.bold),
            ),

            TopFarmer(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Vegetables",size: 20, color: black ,weight:FontWeight.bold),
            ),

            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("images/1.jpg", width: 150,)),

          ],
        ),
      ),

      bottomNavigationBar: Container(
        color: green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/home.png", width: 25, height: 30,),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/cart.png", width: 25, height: 30,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/bag.png", width: 25, height: 30,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/user.png", width: 25, height: 30,),
            ),
          ],
        ),
      ),
    );

  }
}
