import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/login_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Timer(Duration(seconds: 3), (){

      Navigator.pushReplacementNamed(context, LoginScreen.id);
      // FirebaseAuth.instance.authStateChanges().listen((User user) {
      //   if(user == null){
      //     return  Navigator.pushReplacementNamed(context, LoginScreen.id);
      //   }
      //   else{
      //     return Navigator.pushReplacementNamed(context, LoginScreen.id);
      //   }
      // });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Theme.of(context).primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash.jpg',),
            fit: BoxFit.cover
          )
        ),
        ),
    );
  }
}

