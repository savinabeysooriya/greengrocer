import 'package:flutter/material.dart';
import 'package:green_grocer/src/screens/signup.dart';
import 'package:green_grocer/src/screens/login.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showLogin = true;

  void toggleView(){
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
      if(showLogin){
        return LoginPage(toggleView:toggleView);
      }else{
        return SignUpPage(toggleView:toggleView);
      }
  }
}
