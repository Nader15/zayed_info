import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/signUp/signUp_screen.dart';
import 'package:zayed_info/ui/utils/colors.dart';
import 'package:zayed_info/ui/utils/navigator.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                color: primaryColor,
                child: Image.asset(
                  "assets/images/navigation_icon_bg.png",
                  // height: MediaQuery.of(context).size.height / 5,
                  // width: MediaQuery.of(context).size.width / 5,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/splash_backgound.png",
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: primaryColor,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ],
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Email or username',
                                hintStyle: TextStyle(color: greyColor)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: greyColor)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(whiteColor),
                                backgroundColor:
                                    MaterialStateProperty.all(primaryColor),
                                // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              ),
                              onPressed: () {
                                navigateAndKeepStack(context, HomeScreen());
                              },
                              child: Text(
                                "sign in".toUpperCase(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(primaryColor),
                                // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              ),
                              onPressed: () {
                                navigateAndKeepStack(context, SignUpScreen());
                              },
                              child: Text(
                                "create an account".toUpperCase(),
                                style: TextStyle(color: primaryColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {

                            },
                            child: Text("Forgot password ?",
                                style: TextStyle(
                                    color: primaryColor,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
