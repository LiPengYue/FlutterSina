import 'package:fluro/fluro.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullter_sina/api/api.dart';
import 'package:fullter_sina/utils/event.dart';
import 'package:fullter_sina/home.dart';
import 'package:fullter_sina/views/StartPage/StartPageWidget.dart';

import 'package:fullter_sina/routes/Application.dart';

import 'package:fullter_sina/utils/touch_move.dart';
import 'dart:ui';

String token;

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  MyApp() {
    Application.configurationRouter(Router());
  }

  @override
  State<StatefulWidget> createState() => _MyAPP();
}

class _MyAPP extends State<MyApp> {


  String token;
  bool _isShowWelcomePage = true;
  bool isLogIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        platform: TargetPlatform.iOS,
      ),
      home: Stack(
      children: <Widget>[
        createWelcomePage(),
        TouchMoveView()
      ],
      )

    );
  }

  Widget createWelcomePage() {
    if (_isShowWelcomePage) {
      return getStartPageWidget();
    } else {
      return Home();
    }
  }

  Widget getStartPageWidget() {
    StartPageWidget startPage = StartPageWidget(countDownFinishedBlock: () {
      setState(() {
        _isShowWelcomePage = false;
      });
    });
    return startPage;
  }
}
