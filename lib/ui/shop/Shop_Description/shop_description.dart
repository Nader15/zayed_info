import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zayed_info/ui/shop/Shop_Description/shop_options.dart';

class ShopDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShopOptions(
                  function: (){},
                  widget: Icon(
                    Icons.chat_bubble,
                    color: Colors.deepOrange,
                  ),
                ),
                ShopOptions(
                  function: (){},
                  widget: Icon(
                    Icons.call,
                    color: Colors.deepOrange,
                  ),
                ),
                ShopOptions(
                  function: (){},
                  widget: Icon(
                    Icons.directions,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                  ),
                ),
                ShopOptions(
                  function: (){},
                  widget: SvgPicture.asset(
                    "assets/images/whatsapp.svg",
                    height: 25,
                    color: Colors.deepOrange,
                  ),
                ),
                ShopOptions(
                  function: (){},
                  widget: SvgPicture.asset(
                    "assets/images/facebook.svg",
                    height: 25,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            Text(
              "Bazokaa",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "2.24 km",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "يقدم المطعم العديد من الأطعمة الشهية اللذيذة الطازجة",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
