import 'package:flutter/material.dart';

class ShopOptions extends StatelessWidget {
  final Widget widget;
  final Function function;


  const ShopOptions({Key key, this.widget, this.function}) : super(key: key);@override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.only(
            top: 10, bottom: 10, right: 40, left: 40),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.deepOrange)),
        child: widget
      ),
    );
  }
}
