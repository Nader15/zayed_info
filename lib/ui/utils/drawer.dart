import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zayed_info/api/shared.dart';
import 'package:zayed_info/ui/login/login_cubit/cubit.dart';
import 'package:zayed_info/ui/login/login_cubit/states.dart';
import 'package:zayed_info/ui/main_cubit/cubit.dart';
import 'package:zayed_info/ui/main_cubit/states.dart';
import 'package:zayed_info/ui/utils/colors.dart';
import 'package:zayed_info/ui/utils/constants.dart';
import 'package:zayed_info/ui/utils/navigator.dart';
import 'package:zayed_info/ui/login/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  TextStyle _style = TextStyle(color: Colors.grey.shade700);
  Color _color = Colors.grey.shade700;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
      listener: (context, state) {},
      builder: (context, state) {
        // var userModel = MainCubit.get(context).user;
        return SafeArea(
          child: Drawer(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Column(
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/navigation_icon_bg.png",
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                          color: primaryColor,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.person,
                                    size: 60,
                                    color: primaryColor,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${usersModel.user.name}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "${usersModel.user.email}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.storefront_sharp,
                      color: _color,
                    ),
                    title: Text(
                      "Geo Stores",
                      style: _style,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.shopping_cart_outlined,
                      color: _color,
                    ),
                    title: Text(
                      "Orders",
                      style: _style,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.business_center_outlined,
                      color: _color,
                    ),
                    title: Text(
                      "Manage Your Business",
                      style: _style,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.forward_to_inbox_sharp,
                      color: _color,
                    ),
                    title: Text(
                      "Inbox",
                      style: _style,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: _color,
                    ),
                    title: Text(
                      "Settings",
                      style: _style,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.error,
                      color: _color,
                    ),
                    title: Text(
                      "About Us",
                      style: _style,
                    ),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.power_settings_new_outlined,
                      color: Colors.red,
                    ),
                    title: Text(
                      "LogOut",
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () {
                      clearAllData().then((value) {
                        navigateAndClearStack(context, LoginScreen());
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
