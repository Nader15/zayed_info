import 'package:flutter/material.dart';
import 'package:zayed_info/api/shared.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/login/login_screen.dart';
import 'package:zayed_info/ui/utils/constants.dart';

import '../home/main_home.dart';
import '../login/login_screen.dart';
import '../utils/navigator.dart';
import '../utils/navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserTocken(context).then((value) {
      Widget widget;
      if (bearerToken == "null") {
        widget = LoginScreen();
      } else {
        widget = MainHome();
      }
      Future.delayed(Duration(seconds: 2), () {
        navigateAndClearStack(context, widget);
      });
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.asset(
          "assets/images/splash_backgound.png",
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width/3,
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
