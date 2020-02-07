import 'package:flutter/material.dart';
import 'package:test_app/components/sidebarItem.dart';
import 'package:test_app/helper/ui.dart';
import 'package:test_app/icons/my_flutter_app_icons.dart';

class customDrawer extends StatelessWidget {
  List icons = [
    Icon(MyFlutterApp.facebook,color: Colors.white),
    Icon(MyFlutterApp.twitter,color: Colors.white,),
    Icon(MyFlutterApp.instagram,color: Colors.white,),
    Icon(MyFlutterApp.linkedin,color: Colors.white,),
    Icon(MyFlutterApp.youtube,color: Colors.white,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17182D),
      body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 30, right: 25, bottom: 30),
                    child: Image.asset('assets/logo.png')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: sideBarItems
                      .map((f) => (
                        sidebarItem(
                            title: f['title'],
                            color: f['color'],
                          )))
                      .toList(),
                ),
                Column(
                  children: icons
                      .map((f) => Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              (Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 10),
                                child: f,
                              )),
                            ],
                          ))
                      .toList(),
                )
              ],
            ),
          ),
    );
      
  }
}
