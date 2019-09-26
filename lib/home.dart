import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fullter_sina/utils/event.dart';

import 'views/homePage/home_page.dart';
import 'views/video/video_page.dart';
import 'views/found_page/FoundPage.dart';
import 'views/message_page/MessagePage.dart';
import 'views/my_page/MyPage.dart';

import 'package:flutter/services.dart';
import 'package:fullter_sina/api/user_info/userInfoModel.dart';
import 'api/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fluro/fluro.dart';

class Home extends StatefulWidget {
  static const MethodChannel methodChannel = const MethodChannel("welcome_page_channle_name");
  static const EventChannel eventChannel =
  const EventChannel("welcome_page_event_channle_name");
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<Widget> _children;
  String _titleStr = "首页";
  List<String> _titleStrArray = [
    "首页",
    "视频",
    "发现",
    "消息",
    "我的",
  ];
  int _currentSelectedIndex = 0;

  List<List<BottomNavigationBarItem>> _bottomNavigationBarItemArrays;
  List<BottomNavigationBarItem> _bottomNavigationBarCurrentSelectedItem;

  List<BottomNavigationBarItem> _bottomNavigationBarItemSelect1;
  List<BottomNavigationBarItem> _bottomNavigationBarItemSelect2;
  List<BottomNavigationBarItem> _bottomNavigationBarItemSelect3;
  List<BottomNavigationBarItem> _bottomNavigationBarItemSelect4;
  List<BottomNavigationBarItem> _bottomNavigationBarItemSelect5;


  bool isLogIn = false;
  String token;

  @override
  void initState() {
    super.initState();
    Home.eventChannel
        .receiveBroadcastStream()
        .listen(_eventChannelOnData, onError: _cventChannelError());

    Api.getToken().then((TOKEN) {
      if (TOKEN.runtimeType == String && TOKEN != null) {
        setState(() {
          isLogIn = true;
          token = TOKEN;
        });
      } else {
        getToken();
      }
    }).catchError((e) {
      print(e);
    });

    createIndexStackDatas();
    createBottomItem();
  }

  _eventChannelOnData(Object event) {
    print("原生 -> flutter");
      setState(() {
        Map<String,String> map = Map<String,String>.from(event);
        _saveAppInfo(map["appInfo"]);
        UserInfoModel model = UserInfoModel.fromMap(Map<String,String>.from(event));
        token = model.access_token;
        isLogIn = true;
    });
  }

  _saveAppInfo(String appInfo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("APPINFO", appInfo);
  }

  _cventChannelError() {}

  @override
  Widget build(BuildContext context) {
    if (isLogIn) {
      return _createScaffold();
    } else {
      return Container(color: Colors.white);
    }
  }

  getToken() {
    UserInfoModel model = _getToken();
    if (model.access_token.length > 0) {
      setState(() {
        isLogIn = true;
        token = model.access_token;
      });
    }
  }

  _getToken() async {
    Map code = await _getAuothCode();
    UserInfoModel model = UserInfoModel.fromMap(code);
    return model;
  }

  Map<String, String> tokenmap;

  _getAuothCode() async {
    try {
      //原生方法名为callNativeMethond,flutterPara为flutter调用原生方法传入的参数，await等待方法执行
      tokenmap = await Home.methodChannel.invokeMapMethod("getOauthCode");
      //如果原生方法执行回调传值给flutter，那下面的代码才会被执行
      print(tokenmap);
      return tokenmap;
    } on PlatformException catch (e) {
      //抛出异常
      //flutter: PlatformException(001, 进入异常处理, 进入flutter的trycatch方法的catch方法)
      print(e);
      return Map();
    }
  }

  setState1(UserInfoModel model) {
    if (model != null) {
      setState(() {
        isLogIn = true;
      });
    }
  }

  Scaffold _createScaffold() {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(_titleStr),
//      ),
      body: IndexedStack(
        children: _children,
        index: _currentSelectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarCurrentSelectedItem,
        //shifting :按钮点击移动效果
        //fixed：固定
        //选中后，底部BottomNavigationBar内容的颜色(选中时，默认为主题色)（仅当type: BottomNavigationBarType.fixed,时生效）
        fixedColor: Color.fromARGB(255, 0, 188, 96),
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentSelectedIndex,
        onTap: _changeSelectedBottomNavigationItem,
      ),
    );
  }

  void createIndexStackDatas() {
    _children = [HomePage(), VideoPage(), FoundPage(), MessagePage(), MyPage()];
  }

  void createBottomItem() {
    Color color = Colors.black;

    _bottomNavigationBarItemSelect1 = [
      BottomNavigationBarItem(
          title: Text(
            "微博",
            style: TextStyle(color: Colors.red),
          ),
          icon: Icon(
            Icons.home,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("视频", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.ondemand_video,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("发现", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("消息", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.mail_outline,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("我", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.perm_identity,
            color: Colors.black87,
          )),
    ];

    _bottomNavigationBarItemSelect2 = [
      BottomNavigationBarItem(
          title: Text(
            "微博",
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(
            Icons.beach_access,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("视频", style: TextStyle(color: Colors.red)),
          icon: Icon(
            Icons.video_library,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("发现", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("消息", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.mail_outline,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("我", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.perm_identity,
            color: Colors.black87,
          )),
    ];

    _bottomNavigationBarItemSelect3 = [
      BottomNavigationBarItem(
          title: Text(
            "微博",
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(
            Icons.beach_access,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("视频", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.ondemand_video,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("发现", style: TextStyle(color: Colors.red)),
          icon: Icon(
            Icons.favorite,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("消息", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.mail_outline,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("我", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.perm_identity,
            color: Colors.black87,
          )),
    ];

    _bottomNavigationBarItemSelect4 = [
      BottomNavigationBarItem(
          title: Text(
            "微博",
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(
            Icons.beach_access,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("视频", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.ondemand_video,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("发现", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("消息", style: TextStyle(color: Colors.red)),
          icon: Icon(
            Icons.mail,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("我", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.perm_identity,
            color: Colors.black87,
          )),
    ];

    _bottomNavigationBarItemSelect5 = [
      BottomNavigationBarItem(
          title: Text(
            "微博",
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(
            Icons.beach_access,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("视频", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.ondemand_video,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("发现", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("消息", style: TextStyle(color: Colors.black)),
          icon: Icon(
            Icons.mail_outline,
            color: Colors.black87,
          )),
      BottomNavigationBarItem(
          title: Text("我", style: TextStyle(color: Colors.red)),
          icon: Icon(
            Icons.person,
            color: Colors.black87,
          )),
    ];

    _bottomNavigationBarItemArrays = [
      _bottomNavigationBarItemSelect1,
      _bottomNavigationBarItemSelect2,
      _bottomNavigationBarItemSelect3,
      _bottomNavigationBarItemSelect4,
      _bottomNavigationBarItemSelect5
    ];

    _bottomNavigationBarCurrentSelectedItem = _bottomNavigationBarItemArrays[0];
  }

  void _changeSelectedBottomNavigationItem(int index) {
    setState(() {
      _currentSelectedIndex = index;
      _titleStr = _titleStrArray[index];
      _bottomNavigationBarCurrentSelectedItem =
          _bottomNavigationBarItemArrays[index];
    });
  }
}
