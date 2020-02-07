import 'package:flutter/material.dart';

class homeComponent4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
                  'الفيديوهات',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
          ),
          Container(
            padding: EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 25),
            color: Colors.white,
            width: double.infinity,
            child: Image.asset('assets/Image3.png'),
          )
        ],
      ),
    );
  }
}