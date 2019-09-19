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
                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568903289436&di=dfc39cf0057ba8d2ddcd1cf20f3efc46&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F4d17253bf781347839246b716135e3851941b9c5a574-BP5WfX_fw658"),
//汉尼拔                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568903176569&di=ae9c32cca9bdd03670415df8a9ef3aec&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20171021%2F403e01f1693444a1abb376271aac166e.jpeg"),
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
