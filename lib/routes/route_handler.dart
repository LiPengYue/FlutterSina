import 'package:flutter/material.dart';
import 'package:fullter_sina/views/StartPage/StartPageWidget.dart';
import 'package:fluro/fluro.dart';
import 'package:fullter_sina/views/comment/comments_page.dart';

import 'package:fullter_sina/views/login/login_webview.dart';
import 'package:fullter_sina/home.dart';

import 'package:fullter_sina/views/comment/forwarding_popview.dart';
import 'package:fullter_sina/utils/preview_image.dart';
import 'package:fullter_sina/views/my_page/MyInfoPage.dart';

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

var goPreviewImageItemHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String url = params["url"].first;
  url = url.replaceAll("<B>", "/");
  return PreviewImageItem(
    url: url,
  );
});

var goForWardingHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  double x = 0;
  double y = 0;
  double h = 0;
  double w = 0;

  try {
    x = double.parse(params["x"].first);
  } catch (e) {}
  ;
  try {
    y = double.parse(params["y"].first);
  } catch (e) {}
  ;
  try {
    h = double.parse(params["h"].first);
  } catch (e) {}
  ;
  try {
    w = double.parse(params['w'].first);
  } catch (e) {}
  ;

  return ForwardingPopViewAnimationController(rect: Rect.fromLTWH(x, y, w, h));
});

var goMyInfoPageHander = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String uid = params["uid"].first;
  return MyInfoPage(uid: uid);
});
