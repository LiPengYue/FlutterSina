import 'package:flutter/material.dart';
import 'package:fullter_sina/api/api.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        color: Colors.limeAccent,
        child: FlatButton(
          child: Text("重置token"),
          onPressed: () {
            Api.setToken(null);
          },
        ),
      ),
    );
  }
}
