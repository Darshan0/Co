import 'dart:async';
import 'dart:core';

import 'package:co/auth_screens/login_screens.dart';
import 'package:co/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:splashscreen/splashscreen.dart';

import 'app_utils/app_settings.dart';
import 'bottom_navigation_screen.dart';

class AppSplashScreen extends StatefulWidget{
  @override
  SplashScreenState createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<AppSplashScreen>{


  String route ="";
  
  _getLoginStatus() async{
    try{
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      bool _checkValue = sharedPreferences.containsKey(AppSettings.isFirstLogin);
      if(_checkValue){
        bool isFirstLogin = sharedPreferences.getBool(AppSettings.isFirstLogin);
        if(isFirstLogin){
          setState(() {route = '/auth';});
        }else{
          bool _checkUserLoggedout = sharedPreferences.containsKey(AppSettings.isUserLoggetOut);
          if(_checkUserLoggedout){
            bool isloggedout = sharedPreferences.getBool(AppSettings.isUserLoggetOut);
            if(isloggedout){
              setState(() { route = '/auth'; });
            }else{
              setState(() { route = '/home'; });
            }
          }else{
            setState(() { route = '/auth'; });
          }
        }
      }else{
        sharedPreferences.setBool(AppSettings.isFirstLogin,true);
        setState(() { route = '/auth'; });
      }
    }catch (e){
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      } else {
        SystemNavigator.pop();
      }
    }
  }

  @override
  void initState() {
    this._getLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/auth':(context) => LoginScreen(),
        '/home':(context) => NavigationScreen(),
      },
      home:Scaffold(
        body: SplashScreen(
          seconds: 4,
          navigateAfterSeconds: route, 
          backgroundColor: Colors.black,
          title: Text('Community', style: TextStyle(fontFamily: 'Gilroy-ExtraBold', color: Colors.white , fontSize: 25),),
          image: Image.asset('images/app_logo/splash_logo.png'),
          photoSize: 50,
          loaderColor: Colors.black,
        )
      ),
    );
  }
}