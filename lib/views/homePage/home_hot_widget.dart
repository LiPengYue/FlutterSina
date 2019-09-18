
import 'package:flutter/material.dart';

class HomeHotWidget extends StatefulWidget  {

  @override
  State<StatefulWidget> createState() => _HomeHotWidget();
}

class _HomeHotWidget extends State<HomeHotWidget> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(color: Colors.orangeAccent);
  }
}