import 'package:flutter/material.dart';
import 'package:green_grocer/src/Animation/FadeAnimation.dart';
import 'package:green_grocer/src/commons.dart';
import 'package:green_grocer/src/services/auth.dart';

class SignUpPage extends StatefulWidget {

  final Function toggleView;
  SignUpPage({this.toggleView});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String email ="";
  String password ="";

//  final AuthService _auth =  AuthService();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[

                  Positioned(
                    height: 300,
                    width: width,
                    child: FadeAnimation(1.3, Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/download.jpg"),
                              fit: BoxFit.fill
                          )
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1.5, Text("SignUp", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 40),)),
                  SizedBox(height: 30,),
                  FadeAnimation(1.7,
                    Form(
                        child:  Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(196, 135, 198, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                        color: Colors.grey[200]
                                    ))
                                ),
                                child: TextFormField(

                                  onChanged: (val){
                                    setState(() =>
                                    email = val
                                    );
                                  },

                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "email",
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  obscureText: true,
                                  onChanged: (val){
                                    setState(() =>
                                    password = val
                                    );
                                  },

                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                              )
                            ],
                          ),
                        ) ),

                  ),

                  SizedBox(height: 30,),

                  FadeAnimation(1.7, Center(
                    child: RaisedButton(
                      disabledColor: green,
                      color: green,


                      child: Text(
                        "SignUp",
                        style: TextStyle(color: white),
                      ),
                      onPressed:() async{

                      },
                    ),
                  )
                  ),


                  SizedBox(height: 30,),
                  FadeAnimation(2, Center(
                    child: RaisedButton(
                      disabledColor: green,
                      color: green,


                      child: Text(
                        "Login",
                        style: TextStyle(color: white),
                      ),
                      onPressed:() {
                        widget.toggleView();
                      },
                    ),)),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
