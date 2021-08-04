import 'package:flutter/material.dart';
import 'package:zayed_info/ui/home/slider.dart';
import 'package:zayed_info/ui/shop/Shop_Screen/shop_screen.dart';

class ShopsCategories extends StatefulWidget {
  @override
  _ShopsCategoriesState createState() => _ShopsCategoriesState();
}

class _ShopsCategoriesState extends State<ShopsCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){ Navigator.pop(context);}),
        backgroundColor: Colors.white,
        title: Text("Grill",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){})
        ],
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
        physics: ScrollPhysics(),
        shrinkWrap: true,
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopScreen()));
              },
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ClipRRect(
                      borderRadius:
                      BorderRadius.all(Radius.circular(5.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: [
                              Image.network(imgList[index],
                                  fit: BoxFit.cover,height: MediaQuery.of(context).size.height/6,width: double.infinity, ),
                              Positioned(
                                  bottom: 0.0,
                                  // left: 0.0,
                                  right: 0.0,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            shape: BoxShape.rectangle,
                                            color: Colors.brown
                                        ),
                                        child: Text(
                                            'Restaurants',style: TextStyle(color: Colors.white),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            shape: BoxShape.rectangle,
                                            color: Colors.orange
                                        ),
                                        child: Text(
                                            '0 km'),
                                      ),
                                    ],
                                  )),
                              Positioned(
                                  bottom: 10.0,
                                  left: 10.0,
                                  // right: 0.0,
                                  child:    Row(
                                    children: [
                                      Icon(Icons.star,size: 20,color: Colors.orange,),
                                      SizedBox(width: 5,),
                                      Text(
                                        '0(0)',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),),
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

                            ],
                          ),
                        ],
                      )),
                ),
              ),
            );
          }),
    );
  }
}
