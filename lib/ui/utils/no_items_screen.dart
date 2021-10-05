import 'package:flutter/material.dart';
import 'package:zayed_info/ui/utils/colors.dart';

class NoItemsScreen extends StatelessWidget {
  final String title;

  const NoItemsScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
        title: Text(
            title,
          style: TextStyle(color: blackColor),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
      ),
      backgroundColor: greyAppColor,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Text(
              "No Feed, yet",
              style: TextStyle(
                  color: blackColor, fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              "Try to refresh the page",
              style: TextStyle(color: blackColor, fontSize: 15, height: 1.5),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "reload".toUpperCase(),
                  style: TextStyle(color: whiteColor),
                ),
                color: primaryColor.withOpacity(.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Spacer(),
            Image(
              image: AssetImage('assets/images/no_items.png'),
            ),
          ],
        ),
      ),
    );
  }
}
