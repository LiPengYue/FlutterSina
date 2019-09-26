
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'route_handler.dart';


class Routers {

  static String GoHomePage = '/';
  static String GoOauth = 'goOauth';
  static String GoStartPage = "~/";
  static String GoCommentsPath = '/GoCommentsPage';
  static String GoForWarding = "/GoForWarding";
  static String GoPreviewImageItem = "/GoPreviewImageItem";

  static void configureRoutes(Router router) {
    router.define(GoHomePage, handler: homePageHandler);
    router.define(GoOauth, handler: goOauthWebHandler);
    router.define(GoCommentsPath, handler: goCommentsPageHandler);
    router.define(GoForWarding, handler: goForWardingHandler);
    router.define(GoPreviewImageItem, handler: goPreviewImageItemHandler);
  }
}

