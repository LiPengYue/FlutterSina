import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fullter_sina/utils/base_webview.dart';
import 'package:fullter_sina/api/data_utils/data_utils.dart';
import 'dart:convert';

class LoginWebView extends StatefulWidget {
  String data;

  LoginWebView({Key key, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginWebView();
}

class _LoginWebView extends State<LoginWebView> {
  bool _success = false;
  String html;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
//    WebViewPage.convertURIWithHTML(widget.data)
    return Scaffold(
//        appBar: AppBar(
//        title: Text("aaaa"),
//    ),
      body:  WebViewPage(uri:"https://api.weibo.com/oauth2/authorize?client_id=108320941&redirect_uri=http://www.baidu.com",title:"微博"),
    );
  }
}
