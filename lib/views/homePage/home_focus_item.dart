import 'dart:ui';
import 'package:fluro/fluro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fullter_sina/routes/Application.dart';
import 'package:fullter_sina/routes/route.dart';
import 'package:fullter_sina/routes/route_handler.dart';
import 'package:fullter_sina/utils/u_color.dart';

import 'package:fullter_sina/models/home_time_line_entity.dart';
import 'package:fullter_sina/views/comment/forwarding_popview.dart';

class HomeFocusItem extends StatefulWidget {
  HomeTimeLineStatus homeTimeLineStatus;

  int index;

  HomeFocusItem({this.homeTimeLineStatus, this.index});

  @override
  State<StatefulWidget> createState() => _HomeFocusItem();
}

class _HomeFocusItem extends State<HomeFocusItem> {
  Rect currentForwardingButtonRect;
  bool isShowForwardingView = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> list = List();
    list.add(_createMain());
    if (isShowForwardingView) {
      list.add(ForwardingPopViewAnimationController(
        rect: currentForwardingButtonRect,
        onTap: () {
          setState(() {
            isShowForwardingView = false;
          });
        },
      ));
    }
    return _createMain();
    return Stack(fit: StackFit.expand, children: list);
  }

  _createMain() {
    return Container(
      color: UColor.CFFFFFF,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _createLineWithHeight(widget.index == 0 ? 0 : 10),
          _createUserInfo(),
          _createDescription(),
          _createImage(),
          _createPopleFeedback()
        ],
      ),
    );
  }

  _createLineWithHeight(double height) {
    return Container(
      color: UColor.CEFEFEF,
      height: height,
    );
  }

  _createUserInfo() {
    return Container(
      color: UColor.CFFFFFF,
      height: 60,
      child: _createUserInfoStack(),
    );
  }

  _createUserInfoStack() {
    return Stack(
      children: <Widget>[
        // icon
        Positioned(
          left: 14,
          height: 40,
          width: 40,
          top: 10,
          child: GestureDetector(
            child: DecoratedBox(
              position: DecorationPosition.foreground,
              child: ClipOval(
                child: FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      widget.homeTimeLineStatus.user.profileImageUrl),
                  placeholder: AssetImage("Sina_LOGO64.png"),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: UColor.CE79936, width: 1),
              ),
            ),
            onTap: () {
              String url;
              url = url == null ? widget.homeTimeLineStatus.user.avatarHd : url;
              url = url == null
                  ? widget.homeTimeLineStatus.user.avatarLarge
                  : url;
              url = url == null
                  ? widget.homeTimeLineStatus.user.profileImageUrl
                  : url;

              _pushToImagePreview(url);
            },
          ),
        ),

        // nameText("尘经墙_fr"),
        Positioned(
          top: 10,
          left: 65,
          right: 20,
          child: GestureDetector(
              child: Text.rich(
                TextSpan(
                  text: widget.homeTimeLineStatus.user.name + "\n",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: UColor.C333333,
                  ),
                  children: [
                    TextSpan(
                      text: _getSource(),
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: UColor.CAFAFAF,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Application.navigateTo(context,
                    "${Routers.GoMyInfoPageItem}?uid=${widget.homeTimeLineStatus.user.id}");
              }),
        ),

        // 右边的 下箭头
        Positioned(
          height: 10,
          width: 40,
          right: 14,
          top: 12,
          child: GestureDetector(
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: UColor.CAFAFAF,
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }

  _createDescription() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 14, right: 14, bottom: 8),
      child: Text.rich(
        TextSpan(children: _getContentStr()),
        textAlign: TextAlign.left,
      ),
    );
  }

  _createImage() {
    String url = widget.homeTimeLineStatus.bmiddlePic;
    url = url == null ? widget.homeTimeLineStatus.thumbnailPic : url;
    url = url == null ? widget.homeTimeLineStatus.originalPic : url;
    if (url == null || url.isEmpty) {
      return Container(height: 0);
    }
    final height = window.physicalSize.height;
    final width = window.physicalSize.width;
    return Container(
      constraints: BoxConstraints(
        minWidth: width,
        maxHeight: 300,
      ),
      padding: EdgeInsets.only(top: 8, bottom: 5, left: 14, right: 14),
      child: GestureDetector(
//        child: Hero(
//          tag: "lookImage",
//          child: Container(color: Colors.cyan),
        child: FadeInImage(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          image: NetworkImage(url),
          placeholder: AssetImage("Sina_LOGO64.png"),
        ),
//        ),
        onTap: () {
          String url = widget.homeTimeLineStatus.bmiddlePic;
          url = url == null ? widget.homeTimeLineStatus.thumbnailPic : url;
          url = url == null ? widget.homeTimeLineStatus.bmiddlePic : url;
          _pushToImagePreview(url);
        },
      ),
    );
  }

  _pushToImagePreview(String url) {
    url = url.replaceAll("/", "<B>");
    Application.navigateTo(context, "${Routers.GoPreviewImageItem}?url=${url}");
  }

  GlobalKey pepleFeedbackKey = GlobalKey();

  _createPopleFeedback() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 8, left: 0, right: 0),
      child:
          // 底部的按钮部分
          Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // 转发
          FlatButton.icon(
            padding: EdgeInsets.only(top: 10),
            splashColor: Colors.white,
            icon: Icon(
              Icons.share,
              color: UColor.CAFAFAF,
              size: 16,
            ),
            label: Text(
              "转发",
              style: TextStyle(
                  color: UColor.CAFAFAF,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            onPressed: () {
              RenderBox renderBox =
                  pepleFeedbackKey.currentContext.findRenderObject();
              Offset offset = renderBox.localToGlobal(Offset.zero);
              Rect rect = Rect.fromLTWH(offset.dx, offset.dy,
                  renderBox.size.width, renderBox.size.height);
              _clickDownArrow(rect);
            },
            key: pepleFeedbackKey,
          ),
          // 评论
          FlatButton.icon(
            padding: EdgeInsets.only(top: 10),
            splashColor: Colors.white,
            icon: Icon(
              Icons.ring_volume,
              color: UColor.CAFAFAF,
              size: 16,
            ),
            label: Text(
              widget.homeTimeLineStatus.commentsCount <= 0
                  ? "评论"
                  : widget.homeTimeLineStatus.commentsCount.toString(),
              style: TextStyle(
                  color: UColor.CAFAFAF,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            onPressed: () {
              Application.navigateTo(context,
                  "${Routers.GoCommentsPath}?commentId=${widget.homeTimeLineStatus.id}",
                  transition: TransitionType.inFromRight);
            },
          ),

          // 赞
          FlatButton.icon(
            padding: EdgeInsets.only(top: 10),
            splashColor: Colors.white,
            icon: Icon(
              Icons.favorite_border,
              color: UColor.CAFAFAF,
              size: 16,
            ),
            label: Text(
              widget.homeTimeLineStatus.attitudesCount <= 0
                  ? "赞"
                  : widget.homeTimeLineStatus.attitudesCount.toString(),
              style: TextStyle(
                  color: UColor.CAFAFAF,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  // MARK: - events
  _clickDownArrow(Rect rect) {
    print("点击了 _clickDownArrow");
    setState(() {
      isShowForwardingView = true;
      currentForwardingButtonRect = rect;
    });
  }

  String _getSource() {
    String source = "";

    if (widget.homeTimeLineStatus.source != null &&
        widget.homeTimeLineStatus.source.isNotEmpty) {
      RegExp regExp = RegExp(
        "(?<=>).*?(?=<)",
      );

      Iterable<RegExpMatch> regExpMatchs =
          regExp.allMatches(widget.homeTimeLineStatus.source);

      String str;
      if (regExpMatchs.length > 0) {
        str = regExpMatchs.first.group(0);
      }
      source = str;
    }

    return "来自 " + source;
  }

  List<TextSpan> _getContentStr() {
    int currentMatchLast = 0;
    RegExp regExp = RegExp("#.*?#");
    List<String> stringList = List();
    List<TextSpan> textList = List();

    String sourceStr = widget.homeTimeLineStatus.text;
    Iterable<RegExpMatch> matchResult = regExp.allMatches(sourceStr);

    if (matchResult.length <= 0) {
      String str = widget.homeTimeLineStatus.text;
      str = str == null ? "" : str;
      return [TextSpan(text: str, style: TextStyle(color: UColor.C333333))];
    }

    for (RegExpMatch match in matchResult) {
      String str = match.group(0);

      if (str != null && str.isNotEmpty) {
        stringList.add(str);

        if (match.start > currentMatchLast) {
          int start = match.start;
          int end = match.end;
          int last = sourceStr.length - match.start;
          String str = sourceStr.substring(currentMatchLast, start);
          TextSpan text = TextSpan(
              text: str,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: UColor.C333333,
              ));
          textList.add(text);
        }

        TextSpan text = TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {},
            text: str,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: UColor.CE79936,
            ));
        textList.add(text);
        currentMatchLast = match.end;
      }
    }

    if (matchResult.length > 0 && sourceStr.length > currentMatchLast) {
      int last = sourceStr.length - currentMatchLast;
      String str = sourceStr.substring(currentMatchLast);
      TextSpan text = TextSpan(
          text: str,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: UColor.C333333,
          ));
      textList.add(text);
    }

    return textList;
  }

  List<TextSpan> _getContentStrWithMatchResult(RegExpMatch matchResult) {}

  static double getHeight() {
    return 120.0;
  }
}
