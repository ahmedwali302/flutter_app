import 'package:flutter/material.dart';
import 'package:test_app/helper/ui.dart';

class listCard extends StatelessWidget {
  String imgPath;
  listCard({
    Key key,
    this.imgPath
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:10,right:10,bottom: 5,top:5),
      color: backgroundColor,
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Image.asset(imgPath),
                      Positioned(
                          top: 70,
                          right: 0,
                          child: Image.asset('assets/logo3.png'),height: 25,),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),                        
                        child: Text(
                          'الدوري الرياضي',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff716D6D)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                        'الملاعب السعوديه الي منصه بكأس العالم..',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '١٢ يونيو ٢٠١٨',
                          style: TextStyle(
                              fontSize: 14, color: Color(0xffB9B9B9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
