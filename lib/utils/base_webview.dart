import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';
import 'u_color.dart';

class WebViewPage extends StatefulWidget {
  String uri;

  final String title;

  WebViewPage({Key key,this.uri, this.title}) : super (key:key);

  @override
  _WebViewState createState() => _WebViewState();
  static convertURIWithHTML(String str) async {
    return Uri.dataFromString(
      str,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString();
  }
}

class _WebViewState extends State<WebViewPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    if (widget.title.length > 0) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: UColor.CE79936,
          title: Text(widget.title),
        ),
        body: _createWebView(),
      );
    }else{
      return Scaffold(
        body: _createWebView(),
      );
    }
  }

  _createWebView (){
    return  Stack(
      children: <Widget>[
        new WebView(
          initialUrl: widget.uri, // 加载的url

          onWebViewCreated: (WebViewController web) {
            _webViewController = web;
            // webview 创建调用，
//              web.loadUrl(widget.uri); //此时也可以初始化一个url
            web.canGoBack().then((res) {
              print(res); // 是否能返回上一级
            });
            web.currentUrl().then((url) {
              print(url); // 返回当前url
            });
            web.canGoForward().then((res) {
              print(res); //是否能前进
            });
          },
          onPageFinished: (String value) {
            // webview 页面加载调用

          },
        )
      ],
    );
}
}
