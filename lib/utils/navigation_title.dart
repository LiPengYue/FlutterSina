

import 'package:flutter/material.dart';
import 'package:fullter_sina/utils/u_color.dart';


class NavigationTitle extends StatefulWidget {

  String title;

  NavigationTitle({this.title});

  @override
  State<StatefulWidget> createState() => _NavigationTitle();
}

class _NavigationTitle extends State<NavigationTitle> {

  @override
  Widget build(BuildContext context) {
    return Text(widget.title,style: TextStyle(color: UColor.C333333,fontWeight: FontWeight.bold));
  }
}

class NavigationBackItem extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NavigationBackItem();
}

class _NavigationBackItem extends State<NavigationTitle> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: FlatButton(child: Icon(Icons.arrow_back_ios),color: UColor.C333333),
    );
//      Text(widget.title,style: TextStyle(color: UColor.C333333,fontWeight: FontWeight.bold));
  }
}

