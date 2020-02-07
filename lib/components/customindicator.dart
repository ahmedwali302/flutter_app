import 'package:flutter/material.dart';


class customIndicator extends StatelessWidget {
  double progress;
  customIndicator({Key key,this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff17182D)),
        value: progress,
        strokeWidth: 2.5,
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
