import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/slider.dart';
import 'package:zayed_info/ui/shops_categories/shops_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: imgList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2.8,
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 1,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopsCategories()));
            },
            child: Stack(
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 5,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  image: NetworkImage(imgList[index]),
                ),
                Container(
                  color: Colors.black.withOpacity(0.3),
                ),
                Center(
                  child: Container(
                    child: Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
