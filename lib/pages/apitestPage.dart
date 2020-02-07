import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_app/components/customindicator.dart';
import 'package:test_app/components/customnetworkimage.dart';
import 'package:test_app/helper/api.dart';
import 'package:test_app/helper/datamodel.dart';
import 'package:test_app/helper/ui.dart';
import 'package:http/http.dart' as http;

class apitestPAge extends StatefulWidget {
  @override
  _apitestPAgeState createState() => _apitestPAgeState();
}

class _apitestPAgeState extends State<apitestPAge> {
  bool loading = false;
  var response;
  Test test;
  List<Data> d= List<Data>() ;
  Future getdata()async{
    
    setState(() {
      loading = true;
    });
    try {
      response = await get();
      
      test = Test.fromJson(response);
      d = test.data;
      

    } catch (e) {
      print(e);
      print(e.data);
      print(e.data.reponse);
    }
    setState(() {
      loading = false;
    });
  }
  @override
  void initState() {
    super.initState();
    getdata();
  }
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
      body: loading? customIndicator(): SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
              Text("page: ${test.page}"),
              Text("per page: ${test.perPage}"),
              Text("total: ${test.total}"),
              Text("total pages: ${test.totalPages}"),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: d.length,
                itemBuilder: (_,index){
                  return Card(
                    
                    color: Colors.indigo[100],
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          customNetworkImage(url: '${d[index].avatar}'),
                          Text('id: ${d[index].id}'),
                          SizedBox(height:5),
                          Text('email: ${d[index].email}'),
                          SizedBox(height:5),
                          Text('first name: ${d[index].firstName}'),
                          SizedBox(height:5),
                          Text('last name: ${d[index].lastName}'),
                          SizedBox(height:5),
                        ],
                      ),
                    ),
                  );
                },
              )
          ],
        ),
      ),)
      
    );
  }
}