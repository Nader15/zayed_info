import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:xs_progress_hud/xs_progress_hud.dart';
import 'package:zayed_info/models/users_model.dart';
class Api {

  BuildContext context;
  Api(@required this.context);


  String baseUrl = 'http://mohp.mpa-media.com/api/';
  String loginUrl = 'login';

  Future userLogin(BuildContext context, String email, String password) async {
    final String apiUrl = baseUrl + loginUrl;
    var data = {
      "email": email,
      "password": password,
      "device_name": "device_name",
    };
    var userToJson = json.encode(data);
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: userToJson,
    );
    Map decode_options = jsonDecode(response.body);

    Map<String, dynamic> dataContent = json.decode(response.body);

    if (!(response.body).toString().contains('error')) {
      print("Api Response : ${dataContent.toString()}");
      return UsersModel.fromJson(dataContent);
    } else {
      print(dataContent.toString());
      return false;
    }
  }

}