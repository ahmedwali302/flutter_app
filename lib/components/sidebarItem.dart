import 'package:flutter/material.dart';
class sidebarItem extends StatelessWidget {
  String title;
  Color color;
  sidebarItem({
    Key key,
    this.title,
    this.color
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.only(right: 20),
                  margin: EdgeInsets.only(bottom:10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(right: BorderSide(color: color,width: 2))
                  ),
                  child: Text(title,
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                ) ;
  }
}