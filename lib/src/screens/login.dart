import 'package:flutter/material.dart';
import 'package:green_grocer/src/Animation/FadeAnimation.dart';
import 'package:green_grocer/src/commons.dart';
import 'package:green_grocer/src/services/auth.dart';

class LoginPage extends StatefulWidget {

  final Function toggleView;
  LoginPage({this.toggleView});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final AuthService _auth =  AuthService();
    final _formKey = GlobalKey<FormState>();

  String email ="";
  String password ="";
  String error = "";


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
                  FadeAnimation(1.5, Text("Login", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 40),)),
                  SizedBox(height: 30,),
                  FadeAnimation(1.7,
                     Form(
                      key: _formKey,
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
                               validator: (val) => val.isEmpty ? 'Enter an email ': null,
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
                               validator: (val) => val.length < 6 ? 'Minimum characters are 7  ': null,
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
                  SizedBox(height: 20,),
                  FadeAnimation(1.7, Center(
                      child: Text("Forgot Password?", style: TextStyle(color: black ,fontWeight: FontWeight.bold),))),
                  SizedBox(height: 30,),

                  FadeAnimation(1.7, Center(
                      child: RaisedButton(
                        disabledColor: green,
                        color: green,


                        child: Text(
                          "Login",
                          style: TextStyle(color: white),
                        ),
                        onPressed:() async{
                          if(_formKey.currentState.validate()){
                            dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                            if(result == null){
                              setState(() {
                                error = "please enter valid email";
                              });
                            }
                          }
                        },
                      ),
                  )
                  ),


                  SizedBox(height: 10,),
                  FadeAnimation(2, Center(
                      child: RaisedButton(
                        disabledColor: green,
                        color: green,


                        child: Text(
                          "SignUP",
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
