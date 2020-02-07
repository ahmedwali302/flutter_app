import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_app/helper/ui.dart';

class homeComponent3 extends StatelessWidget {
  List data =[{'name':'الاتحاد','percent': '30%'},{'name':'الهلال','percent':'20%'},{'name':'النهضه','percent':'50%'}];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
                  'توقع من هو الفائز',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.white,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: data.map((f)=>(
                 Column(
                    children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(bottom: 10),
                       padding: EdgeInsets.all(30),
                       width: MediaQuery.of(context).size.width/3.5,
                       height:MediaQuery.of(context).size.width/4,
                       decoration: BoxDecoration(
                         shape: BoxShape.rectangle,
                         border: Border.all(color: Colors.grey),
                         borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(
                           fit: BoxFit.scaleDown,
                           image:AssetImage('assets/clublogo1.png')
                           )
                       ),
                      // child: Image.asset('assets/clublogo.png'),
                     ),
                     
                     Text(f['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                     
                     Text(f['percent'],style: TextStyle(color: Colors.grey,fontSize: 12),)
                    ],
                  )
              )).toList()
                
                 
                
              ,
            ),
          )
        ],
      ),
    );
  }
}
