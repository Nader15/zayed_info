import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/home/main_home.dart';
import 'package:zayed_info/ui/login/login_cubit/cubit.dart';
import 'package:zayed_info/ui/main_cubit/cubit.dart';
import 'package:zayed_info/ui/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => MainCubit()..user,
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            // canvasColor: Colors.transparent,
            fontFamily: "montserrat",
          ),
          // themeMode: ThemeMode.dark,
          // darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   primarySwatch: Colors.teal,
          //   fontFamily: "Jannah",
          // ),
          home: SplashScreen(),
        ));
  }
}