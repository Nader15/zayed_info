import 'package:flutter/material.dart';

class ShopIcons extends StatelessWidget {
  final String title;
  final Function function;

  const ShopIcons({Key key, this.title, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: function,
      child: Container(
          width: MediaQuery.of(context).size.width / 3.2,
          padding: const EdgeInsets.all(15.0),
          alignment: Alignment.center,
          color: Colors.deepOrange,
          child: Text(
            "$title",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
