import 'package:co/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget{
  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
  
}

class LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child:Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          child: RaisedButton(
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => NavigationScreen()));
            },
          ),
        ),
      )
    );
  }
}