import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zayed_info/api/http.dart';
import 'package:zayed_info/api/shared.dart';
import 'package:zayed_info/models/users_model.dart';
import 'package:zayed_info/ui/login/login_cubit/states.dart';
import 'package:zayed_info/ui/main_cubit/cubit.dart';
import 'package:zayed_info/ui/utils/constants.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> key = GlobalKey<FormState>();



  void userLogin({BuildContext context, String email, String password}) {
    emit(LoginLoadingState());
    Api(context).userLogin(context, email, password).then((value) {
      if (value is UsersModel) {
        usersModel = value;
        setUserTocken(
          auth_token: usersModel.token
              .split("|")[1],

        ).then((value) {
          bearerToken =
          "Bearer ${usersModel.token.split("|")[1]}";
        });
        emit(LoginSuccessState());
      }

    }).catchError((error) {
      print(error.toString());
      LoginErrorState(error.toString());
    });
  }
}
