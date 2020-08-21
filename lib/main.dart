import 'package:flutter/material.dart';
import 'package:green_grocer/src/commons.dart';
import 'package:green_grocer/src/screens/authenticate.dart';
import 'package:green_grocer/src/screens/home.dart';
import 'package:green_grocer/src/screens/login.dart';
import 'package:green_grocer/src/screens/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreenGrocer',
      theme: ThemeData(

        primarySwatch: blue,

      ),
      home: Wrapper(),
    );
  }
}

