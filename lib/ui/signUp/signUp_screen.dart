import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/utils/colors.dart';

class SignUpScreen extends StatelessWidget {
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
                                hintText: 'Phone',
                                hintStyle: TextStyle(color: greyColor)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                foregroundColor:
                                MaterialStateProperty.all(whiteColor),
                                backgroundColor:
                                MaterialStateProperty.all(primaryColor),
                              ),
                              onPressed: () {},
                              child: Text(
                                "get verification code".toUpperCase(),
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Otp',
                                hintStyle: TextStyle(color: greyColor)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                foregroundColor:
                                MaterialStateProperty.all(whiteColor),
                                backgroundColor:
                                MaterialStateProperty.all(primaryColor), ),
                              onPressed: () {},
                              child: Text(
                                "verify".toUpperCase(),

                              ),
                            ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                  Navigator.pop(context);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
