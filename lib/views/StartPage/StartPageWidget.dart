
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'dart:async';




typedef VoidCountDownFinishedBlock = void Function();

class StartPageWidget extends StatefulWidget {
  final VoidCountDownFinishedBlock countDownFinishedBlock;
  String imageName = "lufei";
  String logoImageName = "flutter";
  bool isJumpHome;
  StartPageWidget({Key key, this.countDownFinishedBlock}) : super(key: key);
  @override
  State<StatefulWidget> createState() {

    return new _StartPageWidget(countDownFinishedBlock: countDownFinishedBlock,imageName: imageName);
  }
}

class _StartPageWidget extends State<StartPageWidget> {
  int _timerUtil;
  int current = 10;

  final VoidCountDownFinishedBlock countDownFinishedBlock;
  final String imageName;
  Timer periodicTimer;

  _StartPageWidget({Key key, this.countDownFinishedBlock,this.imageName});
  @override
  void initState() {
    super.initState();
    setupTimer();
  }

  void setupTimer() {
    periodicTimer = Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        current = current-1;
      });
      if (current <= 0) {
        timer.cancel();
        periodicTimer = null;
        countDownFinishedBlock();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: createWidget(context),
    );
  }


  Widget createWidget(BuildContext context) {
    final height = window.physicalSize.height;
    final width = window.physicalSize.width;
    return Container(
      color: Colors.white,
//      constraints: BoxConstraints(maxHeight: height,maxWidth: width),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
              top: 140,
              height: 100,
              width: 100,
              child: Image.asset('assets/images/Sina_LOGO64.png',
                  fit: BoxFit.cover)),
          Positioned(
            top: 250,
            child: Text("微博",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    fontSize: 40)),
          ),
          Positioned(
            top: 330,
            child: Text(
              "微博 ， 随时随地发现新鲜事\nflutter ",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  color: Colors.black26),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 100,
            width: 60,
            height: 30,
            right: 40,
            child: GestureDetector(
              child: Container(
                alignment: AlignmentDirectional.center,
                  child: Text(
                    "跳过 $current",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              onTap: () {

                  countDownFinishedBlock();
              },
            ),
          )
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    periodicTimer.cancel();
    if (periodicTimer != null) {
      periodicTimer = null;
    }
  }
}
