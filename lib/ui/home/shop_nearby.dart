import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/slider.dart';

class ShopNearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        // physics: ScrollPhysics(),
        // shrinkWrap: true,
          itemCount: imgList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: ClipRRect(
                    borderRadius:
                    BorderRadius.all(Radius.circular(5.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.network(imgList[index],
                                fit: BoxFit.cover, width: 200.0),
                            Positioned(
                                bottom: 0.0,
                                left: 0.0,
                                // right: 0.0,
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.rectangle,
                                      color: Colors.orange
                                  ),
                                  child: Text(
                                      '0 km'),
                                )),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. ${imgList.indexOf(imgList[index])} Shop',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,size: 15,color: Colors.grey,),
                                Text(
                                  'الشيخ زايد, أكتوبر',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_rate_outlined,size: 15,color: Colors.orange,),
                                Text(
                                  '0(0)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            );
          }),
    );
  }
}
