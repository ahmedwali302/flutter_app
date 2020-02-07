import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/home-widget.dart';
import 'package:test_app/components/home-widget1.dart';
import 'package:test_app/components/home-widget2.dart';
import 'package:test_app/components/home-widget3.dart';
import 'package:test_app/components/home-widget4.dart';
import 'package:test_app/components/home-widget5.dart';
import 'package:test_app/helper/ui.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body:
       NestedScrollView(
        headerSliverBuilder:  (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 6,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Image.asset(
                'assets/logo1.png',
                height: 30,
              ),
              background: Image.asset(
                'assets/appbar3.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ];
        }, 
      body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  homeComponent(),
                  homeComponent1(),
                  homecomponent2(),
                  homeComponent3(),
                  homeComponent4(),
                  homeComponent5()
                ],
              ),
      ),)
      
    );
  }
}
