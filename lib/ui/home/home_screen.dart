import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zayed_info/ui/home/home_search.dart';
import 'package:zayed_info/ui/home/shop_nearby.dart';
import 'package:zayed_info/ui/home/slider.dart';
import 'package:zayed_info/ui/home/top_categories.dart';
import 'package:zayed_info/ui/main_cubit/cubit.dart';
import 'package:zayed_info/ui/main_cubit/states.dart';
import 'package:zayed_info/ui/utils/colors.dart';
import 'package:zayed_info/ui/utils/drawer.dart';
import 'package:zayed_info/ui/utils/navigator.dart';
import 'package:zayed_info/ui/utils/no_items_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: whiteColor,
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Text(
              "El Sheikh Zayed Info",
              style: TextStyle(color: blackColor),
            ),
            elevation: 0,
            leading: Builder(
                builder: (context) => IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      color: Colors.black,
                    )),
            backgroundColor: whiteColor,
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  navigateAndKeepStack(
                      context,
                      NoItemsScreen(
                        title: 'Cart',
                      ));
                },
                color: Colors.black,
              ),
              IconButton(
                  icon: Icon(Icons.notifications_none_outlined),
                  onPressed: () {
                    navigateAndKeepStack(
                        context,
                        NoItemsScreen(
                          title: "Notifications",
                        ));
                  },
                  color: Colors.black),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HomeSearch(),
                HomeSlider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TopCategories(),
                      ListTile(
                        // tileColor: Colors.red,
                        contentPadding: EdgeInsets.zero,
                        leading: Text(
                          "Shops nearby",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Show all",
                              style:
                                  TextStyle(fontSize: 15, color: primaryColor),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: primaryColor,
                            ),
                          ],
                        ),
                      ),
                      ShopNearby()
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
