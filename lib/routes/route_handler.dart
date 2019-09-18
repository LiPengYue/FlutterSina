import 'package:flutter/material.dart';
import 'package:fullter_sina/views/StartPage/StartPageWidget.dart';
import 'package:fluro/fluro.dart';
import 'package:fullter_sina/views/comment/comments_page.dart';

import 'package:fullter_sina/views/login/login_webview.dart';
import 'package:fullter_sina/home.dart';

var startPage = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return StartPageWidget();
});

var homePageHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Home();
});

var goOauthWebHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String data = params["data"].first;
  return LoginWebView(data: data);
});

var goCommentsPageHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String data = params["commentId"].first;
  int commentId = int.parse(data);
  return CommentsPage(commentId: commentId);
});
