import 'package:flutter/material.dart';
import 'package:fullter_sina/home.dart';
import 'dart:math';
import 'package:fullter_sina/utils/u_color.dart';

import 'package:fullter_sina/utils/event.dart';
import 'package:flutter/services.dart';
import 'package:fullter_sina/views/homePage/home_page.dart';

class TouchMoveView extends StatefulWidget {
  static String json;

  static show(String jsonStr) {
    json = jsonStr;
  }

  @override
  State<StatefulWidget> createState() {
    return TouchMoveState();
  }
}

class TouchMoveState extends State<TouchMoveView> {
  TouchMovePainter painter;

//  static const MethodChannel methodChannel = const MethodChannel("ShowJson");

  //静止状态下的offset
  Offset idleOffset = Offset(10, 100);

  //本次移动的offset
  Offset moveOffset = Offset(10, 100);

  //最后一次down事件的offset
  Offset lastStartOffset = Offset(10, 100);
  Color borderColor = Colors.greenAccent;
  Color shadowColor = Colors.black12;
  double shadowOffset = 4;
  @override
  void initState() {
    painter = TouchMovePainter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: moveOffset,
      child: Container(
        height: 50,
        width: 50,
        child: GestureDetector(
          onPanStart: (detail) {
            setState(() {
              lastStartOffset = detail.globalPosition;
//                painter=TouchMovePainter();
//                painter.painterColor = Colors.green;
              borderColor = Colors.redAccent;
              shadowOffset = 6;
              shadowColor = Colors.black45;
            });
          },
          onPanUpdate: (detail) {
            setState(() {
              moveOffset = detail.globalPosition - lastStartOffset + idleOffset;
              moveOffset = Offset(max(0, moveOffset.dx), max(0, moveOffset.dy));
            });
          },
          onPanEnd: (detail) {
            setState(() {
//                painter=TouchMovePainter();
//                painter.painterColor = Colors.red;
              borderColor = Colors.greenAccent;
              idleOffset = moveOffset * 1;
              shadowOffset = 4;
              shadowColor = Colors.black38;
            });
          },
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              DecoratedBox(
                child: Container(
                  padding: EdgeInsets.all(1),
                  child: ClipOval(
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567663863528&di=4f6e740aaffece6049fd27ee0f3db5a1&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FHa0yIZWZzMeg0_1tYk0SdQ%3D%3D%2F5698742378500849162.jpg"),
                      placeholder: AssetImage("Sina_LOGO64.png"),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: borderColor, width: 1),
                    boxShadow: [
                      //阴影
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(shadowOffset, shadowOffset),
                          blurRadius: 4.0)
                    ]),
              ),
              FlatButton(
                onPressed: () {
                  Home.methodChannel.invokeMapMethod(
                      "showJson", {"json": TouchMoveView.json});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TouchMovePainter extends CustomPainter {
  var painter = Paint();
  var painterColor = Colors.red;

  @override
  void paint(Canvas canvas, Size size) {
    painter.color = painterColor;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        min(size.height, size.width) / 2, painter);
  }

  @override
  bool shouldRepaint(TouchMovePainter oldDelegate) {
    return oldDelegate.painterColor != painterColor;
  }
}
