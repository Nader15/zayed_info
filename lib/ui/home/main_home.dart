import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:zayed_info/ui/categories/categories_screen.dart';
import 'package:zayed_info/ui/home/home_screen.dart';
import 'package:zayed_info/ui/profile/profile_screen.dart';
import 'package:zayed_info/ui/utils/colors.dart';
import 'package:zayed_info/ui/utils/icon_broken.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  var _currentIndex = 0;

  final items = [
    HomeScreen(),
    CategoriesScreen(),
    Center(child: Text("Bookmarks")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: primaryColor,
              unselectedColor: greyColor),

          /// Categories
          SalomonBottomBarItem(
              icon: Icon(Icons.menu_outlined),
              title: Text("Categories"),
              selectedColor: primaryColor,
              unselectedColor: greyColor),

          /// Likes
          SalomonBottomBarItem(
              icon: Icon(Icons.bookmark),
              title: Text("Bookmarks"),
              selectedColor: primaryColor,
              unselectedColor: greyColor),
        ],
      ),
      body: items[_currentIndex],
    );
  }
}
