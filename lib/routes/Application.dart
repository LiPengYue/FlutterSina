import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'route_handler.dart';
import 'package:fullter_sina/routes/route.dart';

class Application {
  static Router router;

  static void configurationRouter(Router route) {
    router = route;
    Routers.configureRoutes(route);
  }

  static navigateTo(BuildContext context, String path,
      {bool replace = false,
      bool clearStack = false,
      TransitionType transition,
      Duration transitionDuration = const Duration(milliseconds: 250),
      RouteTransitionsBuilder transitionBuilder}) {
    router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transition: transition,
        transitionDuration: Duration(milliseconds: 250),
        transitionBuilder: transitionBuilder);
  }
}
