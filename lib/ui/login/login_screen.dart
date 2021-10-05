import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/login/login_cubit/cubit.dart';
import 'package:zayed_info/ui/login/login_cubit/states.dart';
import 'package:zayed_info/ui/signUp/signUp_screen.dart';
import 'package:zayed_info/ui/utils/colors.dart';
import 'package:zayed_info/ui/utils/navigator.dart';

import '../home/main_home.dart';
import '../utils/navigator.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
          if (state is LoginSuccessState)
            navigateAndClearStack(context, MainHome());
          if (state is LoginErrorState) Fluttertoast.showToast(msg: state.error.toString() );
        }, builder: (context, state) {
          return Scaffold(
            body: _mainForm(context, state),
          );
        }));
  }

  Form _mainForm(BuildContext context, state) {
    return Form(
      key: LoginCubit.get(context).key,
      child: SingleChildScrollView(
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
                            controller: emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: validateEmail,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: greyColor)),
                          ),
                          TextFormField(
                            controller: passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: validatePassword,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: greyColor)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ConditionalBuilder(
                            condition: state is! LoginLoadingState,
                            builder: (context) => SizedBox(
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
                                  if (LoginCubit.get(context)
                                      .key
                                      .currentState
                                      .validate()) {
                                    LoginCubit.get(context).userLogin(
                                      context: context,
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );
                                  }
                                  // navigateAndKeepStack(context, HomeScreen());
                                },
                                child: Text(
                                  "sign in".toUpperCase(),
                                ),
                              ),
                            ),
                            fallback: (context) => Center(
                              child: CircularProgressIndicator(),
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
                            onTap: () {},
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

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0)
      return 'أدخل الأيميل';
    else if (!regex.hasMatch(value))
      return 'أدخل أيميل صالح';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length == 0)
      return 'ادخل الرقم السري';
    else if (value.length < 5)
      return 'أدخل رقم سري صالح';
    else
      return null;
  }
}
