import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Widget widget = LoginScreen();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          // builder: (context) => ChatsScreen(),
          builder: (context) => widget,
        ),
      );
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
