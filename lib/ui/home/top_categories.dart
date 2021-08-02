import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/slider.dart';

class TopCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: imgList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image(
                    image: NetworkImage(imgList[index]),
                  ),
                ),
                SizedBox(height: 5,),
                Text("item ${imgList.indexOf(imgList[index])}")
              ],
            ),
          );
        });
  }
}
