import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:test_app/components/customindicator.dart';

class customNetworkImage extends StatelessWidget {
  String url;
  double width;
  double height;
  String placeholder;

  customNetworkImage(
      {Key key, @required this.url, this.placeholder = 'assets/images/logo1.png',this.width,this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransitionToImage(
      image: AdvancedNetworkImage(url, timeoutDuration: Duration(seconds: 10)),
      loadingWidgetBuilder: (context, progress, data) =>
          customIndicator(progress: progress,),
      fit: BoxFit.cover,
      placeholder: Image.asset(placeholder,height: height,width: width,fit: BoxFit.fill,),
      width: width,
      height: height,
      enableRefresh: true,
    );
  }
}