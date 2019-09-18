
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'route_handler.dart';


class Routers {

  static String GoHomePage = '/';
  static String GoOauth = 'goOauth';
  static String GoStartPage = "~/";
  static String GoCommentsPath = '/GoCommentsPage';

  static void configureRoutes(Router router) {
    router.define(GoHomePage, handler: homePageHandler);
    router.define(GoOauth, handler: goOauthWebHandler);
    router.define(GoCommentsPath, handler: goCommentsPageHandler);
  }
}

