import 'package:flutter/material.dart';
import 'package:test_app/components/customdrawer.dart';
import 'package:test_app/components/listCard.dart';
import 'package:test_app/helper/ui.dart';

class newsListPage extends StatefulWidget {
  @override
  _newsListPageState createState() => _newsListPageState();
}

class _newsListPageState extends State<newsListPage>
    with SingleTickerProviderStateMixin {
  List cards =['a','a','a','a'];    
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return
       
        Scaffold(
          backgroundColor: backgroundColor,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height / 5,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Align(
                      alignment: Alignment(0, 0.3),
                      child: Image.asset(
                        'assets/logo1.png',
                         height: 30,
                      )),
                  background: Image.asset(
                    'assets/appbar3.png',
                    fit: BoxFit.fill,
                  ),
                ),
                bottom: TabBar(
                  controller: tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: "الاخبار"),
                    Tab(text: "الصور"),
                    Tab(text: "الفيديوهات"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: cardImg.map((f)=>(
                    listCard(imgPath: f,)
                  )).toList(),
                ),
              ),
              
              Container(),
              Container()
            ],
          )),
    );
    
  }
}


