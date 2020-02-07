import 'package:flutter/material.dart';
import 'package:test_app/components/customdrawer.dart';
import 'package:test_app/helper/ui.dart';
import 'package:test_app/pages/apitestPage.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/newsList.dart';
import '../icons/my_flutter_app_icons.dart';

class navigationPage extends StatefulWidget {
  @override
  _navigationPageState createState() => _navigationPageState();
}

class _navigationPageState extends State<navigationPage> {
  int index = 0;
  final page =[
    homePage(),
    apitestPAge(),
    newsListPage(),
    Text('data'),
    customDrawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 10,
          unselectedFontSize: 8,
          iconSize: 20,
          backgroundColor: Color(0xff17182D),
          currentIndex: index,
          onTap: (v){
            setState(() {
      index = v;
            });
          },
          items: [
            BottomNavigationBarItem(
      icon: Icon(MyFlutterApp.home),
      title: Text('الرئيسيه')
            ),
            BottomNavigationBarItem(
      icon: Icon(MyFlutterApp.soccer_ball),
      title: Text('جدول الدوري')
            ),
            BottomNavigationBarItem(
      icon: Icon(MyFlutterApp.newspaper),
      title: Text('المركز الاعلامي')
            ),
             BottomNavigationBarItem(
      icon: Icon(Icons.star),
      title: Text('احصائيات كامله')
            ),
             BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz),
      title: Text('المزيد')
            ),
          ],

        ),
      body: page[index]
     
      
    );
  }
}
