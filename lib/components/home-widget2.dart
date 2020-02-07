import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_app/helper/ui.dart';

class homecomponent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'آخر التغريدات',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(
                        text: 'المزيد',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {}))
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (_, index) {
                return Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/logo.png',
                                
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'الدوري الرياضي',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    '@account',
                                    style: TextStyle(
                                        fontSize: 12,
                                        //fontWeight: FontWeight.bold,
                                        color: Color(0xff716D6D)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(tweetBody)
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 0,
                    )
                  ],
                );
              })
        ],
      ),
    );
  }
}
