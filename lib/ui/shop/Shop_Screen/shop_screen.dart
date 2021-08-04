import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/slider.dart';
import 'package:zayed_info/ui/shop/Shop_Description/shop_description.dart';
import 'package:zayed_info/ui/shop/Shop_Screen/map_screen.dart';
import 'package:zayed_info/ui/shop/Shop_Screen/shop_screen_icons.dart';


class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        title: Text(
          "Bazokaa",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imgList[1],
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            imgList[3],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Restaurants",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShopIcons(title: "PRODUCT",function: (){},),
                      ShopIcons(title: "REVIEWS",function: (){},),
                      ShopIcons(title: "GALLERY",function: (){},),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ShopDescription(),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.deepOrange,
                      ),
                      title:
                          Text("الشيخ زايد .. الحي الثالث .. المجاورة الثالثة"),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      child: MapScreen(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
