import 'package:flutter/material.dart';
import 'package:test_app/helper/ui.dart';

class newsPage extends StatefulWidget {
  @override
  _newsPageState createState() => _newsPageState();
}

class _newsPageState extends State<newsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
              child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/news5.png',
                //width: double.infinity,
                //height: MediaQuery.of(context).size.height/2.5,
                //fit: BoxFit.fill,
                ),
                Positioned(
                  top: 30,
                  right: 10,
                  width: MediaQuery.of(context).size.width/1.1,
                                child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        BackButton(color: Colors.white,),
                        Icon(Icons.share,color: Colors.white,)
                      ],
                    ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('من الملاعب السعوديه الي منصه التتويج بكأس العالم..',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('الدوري الرياضي',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff716D6D)
                  ),),
                  Text('١٢ يونيو ٢٠١٨',
                  style: TextStyle(
                    fontSize: 14,
                    //fontWeight: FontWeight.w800,
                    color: Color(0xffB9B9B9)
                  ),),
                  SizedBox(height:20),
                   Text(body,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}