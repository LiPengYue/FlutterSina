
import 'package:flutter/material.dart';
import 'package:fullter_sina/routes/Application.dart';
import 'package:fullter_sina/utils/u_color.dart';

import 'package:flutter_animation_set/animation_set.dart';
import 'package:flutter_animation_set/animator.dart';


class MyInfoPage extends StatefulWidget {
  String uid;

  MyInfoPage({this.uid});

  @override
  State<StatefulWidget> createState() => _MyInfoPage();
}

class _MyInfoPage extends State<MyInfoPage> {
  // 有多少个组
  int sectionCount = 2;

  // 每组有多少行（每组有多少个cell item）
  int _rowCountAtSection(int section) {
    return 120;
    if (section == 0) {
      return 0;
    } else if (section == 1) {
      return 10;
    } else {
      return 20;
    }
  }

  // 创建每组的 section header widget
  Widget _sectionHeaderBuilder(BuildContext context, int section) {
    if (section == 0) {
      return _createUserInfoHeader();
    }
    return _createBarHeader();
  }

  // 根据 section 和 row, 创建对应的 cell item widget
  Widget _cellBuilder(BuildContext context, int section, int row) {
    return Container(
      color: UColor.randomColor(),
    );
  }

  // section header widget 的高度
  double _sectionHeaderHeight(BuildContext context, int section) {
    return 400;
  }

  // cell item widget 的高度
  double _cellHeight(BuildContext context, int section, int row) {
    return 20.0;
  }

  @override
  Widget build(BuildContext context) {
    String care = "aaa";
    String fans = "aaaa完";
    String name = "tian天睡不醒";
return ListView.builder(itemCount: 1,itemBuilder: (BuildContext context, int index){
  if (index == 1) {
    return _createUserInfoHeader();
  }
//  if (index == 2) {
//    return _
//  }
});
  }

  _createUserInfoHeader() {
    String care = "aaa";
    String fans = "aaaa完";
    String name = "tian天睡不醒";
   return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          left: 14,
          child: GestureDetector(
            child: Icon(
              Icons.keyboard_backspace,
              color: UColor.CFFFFFF,
            ),
            onTap: () {
              Application.pop(context);
            },
          ),
        ),
        Positioned(
          height: 40,
          width: 40,
          bottom: 80,
          child: GestureDetector(
            child: DecoratedBox(
              position: DecorationPosition.foreground,
              child: ClipOval(
                child: FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568903289436&di=dfc39cf0057ba8d2ddcd1cf20f3efc46&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F4d17253bf781347839246b716135e3851941b9c5a574-BP5WfX_fw658"),
                  placeholder: AssetImage("Sina_LOGO64.png"),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: UColor.CE79936, width: 1),
              ),
            ),
          ),
        ),

        // column
        Positioned(
          bottom: 14,
          child: Column(
            // image
            children: <Widget>[
              _createTextWithUserInfoHeader(10, 14, "微博认证："),
              _createTextWithUserInfoHeader(12, 28, "关注 $care  |  粉丝 $fans"),
              _createTextWithUserInfoHeader(14, 44, name),
            ],
          ),
        ),
      ],
    );
  }

  _createTextWithUserInfoHeader(
      double fontSize, double bottomMargin, String text) {
    return Container(
//      bottom: bottomMargin,
//      right: 0,
//      left: 0,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
            color: UColor.CFFFFFF),
        textAlign: TextAlign.center,
      ),
    );
  }

  _createBarHeader() {
    return Container(
      height: 40,
      color: UColor.C333333,
    );
  }
}
