import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/home_search.dart';
import 'package:zayed_info/ui/home/shop_nearby.dart';
import 'package:zayed_info/ui/home/slider.dart';
import 'package:zayed_info/ui/home/top_categories.dart';
import 'package:zayed_info/ui/utils/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  color: Colors.black,
                )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
              icon: Icon(Icons.notifications_none_outlined),
              onPressed: () {},
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Show all",
                          style: TextStyle(fontSize: 15, color: Colors.orange),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.orange,
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
  }
}
