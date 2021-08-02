import 'package:flutter/material.dart';
import 'package:zayed_info/ui/utils/navigator.dart';

class CustomDrawer extends StatelessWidget {
  TextStyle _style = TextStyle(color: Colors.grey.shade700);
  Color _color = Colors.grey.shade700;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.person,size: 60,color: Colors.grey,)),
                          SizedBox(height: 10,),
                          Text("Guest",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("example@gmail.com",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.storefront_sharp,
                  color: _color,
                ),
                title: Text(
                  "Geo Stores",
                  style: _style,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart_outlined,
                  color: _color,
                ),
                title: Text(
                  "Orders",
                  style: _style,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.business_center_outlined,
                  color: _color,
                ),
                title: Text(
                  "Manage Your Business",
                  style: _style,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.forward_to_inbox_sharp,
                  color: _color,
                ),
                title: Text(
                  "Inbox",
                  style: _style,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: _color,
                ),
                title: Text(
                  "Settings",
                  style: _style,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.error,
                  color: _color,
                ),
                title: Text(
                  "About Us",
                  style: _style,
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.power_settings_new_outlined,
                  color: Colors.red,
                ),
                title: Text(
                  "LogOut",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
