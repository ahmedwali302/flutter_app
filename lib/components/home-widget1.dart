import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class homeComponent1 extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return Container(
                  //padding: EdgeInsets.only(bottom: 15),
                  margin: EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 15,left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'المباريات القادمه',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: 'المزيد',
                                    style: TextStyle(color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}))
                          ],
                        ),
                      ),
  
                      ListView.builder(
                        shrinkWrap: true,
                        
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (_,index){
                        
                        return Column(
                          children: <Widget>[
                            Container(
                                color: Colors.white,
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset('assets/clublogo.png'),
                                        SizedBox(width:5),
                                        Text('الاهلي',style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('22:00',style: TextStyle(fontSize: 14),),
                                        Text('الخميس ١٥ يوليو',style: TextStyle(fontSize: 12,color: Colors.grey),)
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text('الاهلي',style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(width:5),
                                        Image.asset('assets/clublogo.png',),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Divider(height: 0,)
                          ],
                        );
                      }
                      )
                     
                    ],
                  ),
                );
  }
}