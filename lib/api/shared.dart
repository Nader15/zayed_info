import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zayed_info/models/users_model.dart';
import 'package:zayed_info/ui/utils/constants.dart';

String UserTockenAuth="UserAuth";


Future<String> getUserTocken(BuildContext context,) async {
  // save the chosen locale
  var prefs = await SharedPreferences.getInstance();
  bearerToken="${prefs.getString(UserTockenAuth)}";

  print("UserToken Auth  ${bearerToken}");
  return prefs.getString(UserTockenAuth);

}

Future setUserTocken({String auth_token, UsersModel usersModel}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(UserTockenAuth , "Bearer $auth_token");



}

Future clearAllData({String auth_token}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  usersModel=null;
  print(usersModel);

}