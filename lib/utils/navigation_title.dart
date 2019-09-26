import 'package:flutter/material.dart';
import 'package:fullter_sina/utils/u_color.dart';
import 'package:fullter_sina/routes/Application.dart';

class Navigation {
  String title;

  static AppBar forTitle(String title,Widget icon) {
    return AppBar(
      title: NavigationTitle(
        title: title,
      ),
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: icon,
            color: UColor.C333333,
            onPressed: () {
              Application.router.pop(context);
            },
          );
        },
      ),
    );
  }
}

class NavigationTitle extends StatefulWidget {
  String title;

  NavigationTitle({this.title});

  @override
  State<StatefulWidget> createState() => _NavigationTitle();
}

class _NavigationTitle extends State<NavigationTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title,
        style: TextStyle(color: UColor.C333333, fontWeight: FontWeight.bold));
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
      child:
          FlatButton(child: Icon(Icons.arrow_back_ios), color: UColor.C333333),
    );
//      Text(widget.title,style: TextStyle(color: UColor.C333333,fontWeight: FontWeight.bold));
  }
}
