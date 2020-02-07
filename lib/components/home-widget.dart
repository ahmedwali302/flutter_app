import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class homeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                  
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'أخر الأخبار',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'المزيد',
                                  style: TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, '/news');
                                    }))
                        ],
                      ),
                      SizedBox(height:10),
                      Container(
                        decoration: BoxDecoration(
                        ),
                        child:Stack(
                          children: <Widget>[
                            Image.asset('assets/news6.png'),
                            Positioned(
                              top: 160,
                              right: 0,
                              child: Image.asset('assets/logo3.png') ),
                          ],
                        )
                         
                            
                       
                      ),
                      SizedBox(height:10),
                      Text('الدوري الرياضي',
                  style: TextStyle(
                    fontSize: 14,
                    
                    fontWeight: FontWeight.w800,
                    color: Color(0xff716D6D)
                  ),),
                  SizedBox(height:5),
                  Text('من الملاعب السعوديه الي منصه التتويج بكأس العالم..',
                  style: TextStyle(
                    fontSize: 16,
                    height: 0.9,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                    ],
                  ),
                );
  }
}