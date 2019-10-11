import 'package:flutter/material.dart';
import 'package:fullter_sina/api/api.dart';
import 'package:fullter_sina/home.dart';
import 'package:fullter_sina/utils/u_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  List<List<String>> appInfo = List();
  String appInfoStr = "";

  @override
  void initState() {
    super.initState();
    getAppInfo().then((d) {
      setState(() {
        appInfoStr = d;
      });
    });
    appInfo.add(["2965866070", "0b26438e5929e11c9c0e28c5206bdce4"]);
    appInfo.add(["3368759531", "26207e2f8fd0812165a79186b54f6a24"]);
    appInfo.add(["3351686374", "5cda4504d97e4bd465fc776ebbadeae8"]);
    appInfo.add(["108320941", "98d95899f6c0d601f1e29ebde8636c14"]);
    appInfo.add(["2132142803", "596008f2c99da4fb1795041adb592fe9"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Container(color: Colors.redAccent,),

      body: Container(
        child: ListView.builder(
            itemCount: appInfo.length,
            itemBuilder: (BuildContext context, int index) {
              bool isselected = appInfoStr == appInfo[index].first;
              Color color = isselected ? UColor.CE79936 : UColor.C333333;
              String str = (isselected ? "✅ 已" : "  ") + "登录：app$index";

              return FlatButton(
                child: Text(
                  str,
                  style: TextStyle(color: color),
                ),
                onPressed: () {
                  Home.methodChannel
                      .invokeMapMethod("getOauthCode", appInfo[index]);
                },
              );
            }),
      ),
    );
  }

  getAppInfo() async {
    return await _getAppInfo();
  }

  _getAppInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get("APPINFO");
  }
}
