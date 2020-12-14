import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moto_kerala/Constants/Colors/CColor.dart';
import 'package:moto_kerala/Constants/SizeConfig/SizeConfig.dart';
import 'package:moto_kerala/Screens/LoginScreen/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  final ccColor = CColor();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [ccColor.splashColorA, ccColor.splashColorB])),
      child: Center(
        child: Image.asset('assets/images/logos/whitelogotxt.png',
            width: (SizeConfig.screenWidth) * 0.45),
      ),
    );
  }
}
