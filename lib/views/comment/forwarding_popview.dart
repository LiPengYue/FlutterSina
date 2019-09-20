import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:fullter_sina/routes/Application.dart';
import 'package:fullter_sina/utils/u_color.dart';

class ForwardingPopViewAnimationController extends StatefulWidget {
  Rect rect;
  Function onTap;

  ForwardingPopViewAnimationController({this.rect, this.onTap});

  @override
  State<StatefulWidget> createState() =>
      _ForwardingPopViewAnimationController();
}

class _ForwardingPopViewAnimationController
    extends State<ForwardingPopViewAnimationController>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ForwardingPopView(
      animationController: _animationController,
      rect: widget.rect,
      onTap: widget.onTap,
    );
  }
}

class ForwardingPopView extends StatefulWidget {
  Rect rect;
  Function onTap;
  AnimationController animationController;

  ForwardingPopView({this.rect, this.animationController, this.onTap});

  @override
  State<StatefulWidget> createState() => _ForWardingPopView();
}

class _ForWardingPopView extends State<ForwardingPopView> {
  @override
  Widget build(BuildContext context) {
//    widget.animationController.forward();
    Rect rect = Rect.zero;
    rect = widget.rect;
//    return Container(
//      padding:
//      EdgeInsets.only(left: widget.rect.left, top: widget.rect.top),
//      width: 12,
//      height: 12,
//      color: Colors.redAccent,
//    );
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: GestureDetector(
            child: Container(
              color: Colors.black,
            ),
            onTap: () {
              widget.onTap();
            },
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(left: widget.rect.left, top: widget.rect.top),
          width: 12,
          height: 12,
          color: Colors.redAccent,
        )
      ],

//      GestureDetector(
//        child: Opacity(
//          opacity: 0.1,
//          child: Stack(
//            children: <Widget>[
//              Container(
//                padding:
//                EdgeInsets.only(left: widget.rect.left, top: widget.rect.top),
//                width: 12,
//                height: 12,
//                color: Colors.redAccent,
//              )
//            ],
//          ),
//        ),
//        onTap: () {
//          Application.pop(context);
//        },
//      ),
    );
  }
}
