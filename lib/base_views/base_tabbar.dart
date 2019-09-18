
import 'dart:ffi';

import 'package:flutter/material.dart';


class BaseTabBar extends StatefulWidget {
  final List<Widget> itemList;
  final List<Float> itemWidthList;
  BaseTabBar({Key key,this.itemWidthList, this.itemList}) : super(key : key);

  @override
  State<StatefulWidget> createState() => _BaseTabBar();
}

class _BaseTabBar extends State<BaseTabBar> {

  final List<Widget> itemList;
  final List<Float> itemWidthList;

  _BaseTabBar({Key key, this.itemWidthList, this.itemList});

  @override
  Widget build(BuildContext context) {
    /// 分成几个button + 底部的背景的指示条
    return Container(child: Text("alaslg"),);
  }
}