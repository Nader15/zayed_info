import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/slider.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){}),
        backgroundColor: Colors.white,
        title: Text("Bazokaa",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(icon: Icon(Icons.bookmark_border,color: Colors.black,), onPressed: (){}),
          IconButton(icon: Icon(Icons.share,color: Colors.black,), onPressed: (){}),
        ],
      ),
      body: Column(
        children: [
          Image.network(imgList[1],
            fit: BoxFit.cover,height: MediaQuery.of(context).size.height/4,width: double.infinity, ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(imgList[3],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text("Restaurants",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                        padding: const EdgeInsets.all(15.0),
                        alignment: Alignment.center,
                      color: Colors.deepOrange,
                        child: Text("PRODUCT",style: TextStyle(color: Colors.white),)
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width/3.2,
                        padding: const EdgeInsets.all(15.0),
                        alignment: Alignment.center,
                        color: Colors.deepOrange,
                        child: Text("REVIEWS",style: TextStyle(color: Colors.white,),)
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width/3.2,
                        padding: const EdgeInsets.all(15.0),
                        alignment: Alignment.center,
                        color: Colors.deepOrange,
                        child: Text("GALLERY",style: TextStyle(color: Colors.white),)
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.deepOrange)
                              ),
                              child: Icon(Icons.chat_bubble,color: Colors.deepOrange,),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.deepOrange)
                              ),
                              child: Icon(Icons.call,color: Colors.deepOrange,),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.deepOrange)
                              ),
                              child: Icon(Icons.directions,color: Colors.deepOrange,),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Icon(Icons.chat_bubble,color: Colors.white,),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.deepOrange)
                              ),
                              child: Icon(Icons.face,color: Colors.deepOrange,),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.deepOrange)
                              ),
                              child: Icon(Icons.call_made,color: Colors.deepOrange,),
                            ),

                          ],
                        ),
                        Text("Bazokaa",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text("2.24 km",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("يقدم المطعم العديد من الأطعمة الشهية اللذيذة الطازجة",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.location_on,color: Colors.deepOrange,),
                    title: Text("الشيخ زايد .. الخي الثالث .. المجاورة الثالثة"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
