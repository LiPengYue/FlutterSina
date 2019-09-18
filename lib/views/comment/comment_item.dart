import 'package:flutter/material.dart';
import 'package:fullter_sina/api/user_info/userInfoModel.dart';
import 'package:fullter_sina/utils/u_color.dart';
import 'package:fullter_sina/models/comment_entity.dart';

class CommentItem extends StatefulWidget {
  CommantCommants comment;

  CommentItem({this.comment});

  @override
  State<StatefulWidget> createState() => _CommentItemWidget();
}

class _CommentItemWidget extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: UColor.CFFFFFF,
      child: Column(
        children: <Widget>[
          _createlineIfNeeded(), // 顶部的线
          _createCommentInfo() // 个人信息
        ],
      ),
    );
  }

  _createlineIfNeeded() {
    return Container(
      child: Container(
        height: 1,
        padding: EdgeInsets.only(left: 14, right: 14, bottom: 8),
        color: UColor.CFAFAFA,
      ),
    );
  }

  _createCommentInfo() {
    return Stack(
      children: <Widget>[
        _createPerfileImage(), // 头像
        _createNameAndCommentInfo(),
      ],
    );
  }

  _createPerfileImage() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 14, top: 8),
      height: 48,
      child: DecoratedBox(
        child: ClipOval(
          child: FadeInImage(
              fit: BoxFit.cover,
              image: NetworkImage(widget.comment.user.profileImageUrl),
              placeholder: AssetImage("Sina_LOGO64.png")),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: UColor.CE79936, width: 1),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  _createNameAndCommentInfo() {
    return Container(
      padding: EdgeInsets.only(left: 62, top: 8, right: 14),
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          _createName(),
          _createCommentString(),
          _createReplayCommentInfo(),
        ],
      ),
    );
  }

  _createName() {
    bool isVip = widget.comment.user.allowAllComment;
    Color nameColor = isVip ? UColor.CE79936 : UColor.C333333;
    // name
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 0, right: 0, top: 0),
        child: Text(
          widget.comment.user.name,
          style: TextStyle(
              color: nameColor, fontSize: 12, fontWeight: FontWeight.w400),
        ));
  }

  _createCommentString() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 3),
      child: Text.rich(
        TextSpan(children: _createCommentRich()),
        textAlign: TextAlign.left,
      ),
    );
  }

  List<InlineSpan> _createCommentRich() {
    String commentStr = widget.comment.text;
    RegExp regExp = RegExp("@.*?:");
    Iterable<RegExpMatch> results = regExp.allMatches(commentStr);

    List<InlineSpan> textSpans = List();

    if (results.length <= 0) {
      return [_createCommentFragmentStr(commentStr, UColor.C222222)];
    }

    int currentLast;
    for (RegExpMatch match in results) {
      if (match.start > currentLast) {
        String noramlStr = commentStr.substring(currentLast, match.start);
        textSpans.add(_createCommentFragmentStr(noramlStr, UColor.C222222));
      }

      String matchStr = match.group(0);
      textSpans.add(_createCommentFragmentStr(matchStr, UColor.CblueAccent));
      currentLast = match.end;
    }
    if (currentLast < commentStr.length) {
      String normalStr = commentStr.substring(currentLast, commentStr.length);
      textSpans.add(_createCommentFragmentStr(normalStr, UColor.C222222));
    }
    return textSpans;
  }

  InlineSpan _createCommentFragmentStr(String str, Color color) {
    return TextSpan(
        text: str,
        style:
            TextStyle(color: color, fontSize: 13, fontWeight: FontWeight.w400));
  }

  _createReplayCommentInfo() {
    return Container(
      height: 30,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.centerRight,
        children: <Widget>[
//          _createCommentTime(), // 时间
          _createReplayForwardingButton(), // 转发
          _createReplayCommentButton(), // 评论
          _createFavorite(),
        ],
      ),
    );
  }

  _createCommentTime() {
    DateTime dateTime = DateTime.parse(widget.comment.createdAt);
    String month = dateTime.month.toString();
    String day = dateTime.day.toString();
    String hour = dateTime.hour.toString().padLeft(2, "0");
    String minute = dateTime.minute.toString().padLeft(2, "0");
    String createTimeStr = month + "-" + day + " " + hour + ":" + minute;
    return Container(
      padding: EdgeInsets.only(),
      alignment: Alignment.centerLeft,
      child: Text(
        "9-10 12:02",
//        createTimeStr,
        style: TextStyle(color: UColor.CAFAFAF),
      ),
    );
  }

  _createReplayForwardingButton() {
    return _createButton(60, 30, Colors.black, Icons.share, () {});
    return Positioned(
      right: 60,
      top: 0,
      bottom: 0,
//      width: 30,
      child: IconButton(
        tooltip: "转发按钮",
        icon: Icon(Icons.share),
        iconSize: 14,
        color: UColor.CAFAFAF,
        onPressed: () {
          print("点击了分享按钮");
        },
      ),
    );
  }

  _createReplayCommentButton() {
    return _createButton(30, 30, Colors.blue, Icons.toc, () {
      print("点击了评论");
    });
    return Positioned(
      right: 30,
      top: 0,
      bottom: 0,
//      width: 30,
      child: Container(
        child: IconButton(
          tooltip: "评论按钮",
          icon: Icon(Icons.toc),
          iconSize: 14,
          color: UColor.CAFAFAF,
          onPressed: () {
            print("点击了评论");
          },
        ),
      ),
    );
  }

  _createFavorite() {
    return _createButton(0, 30, Colors.red, Icons.favorite_border, () {
      print("点赞");
    });
    return Positioned(
      right: 0,
      top: 0,
      bottom: 0,
//      width: 30,
      child: IconButton(
        tooltip: "点赞按钮",
        icon: Icon(Icons.favorite_border),
        iconSize: 14,
        color: UColor.CAFAFAF,
        onPressed: () {
          print("点赞");
        },
      ),
    );
  }

  _createButton(double right, double width, Color color, IconData icon,
      VoidCallback block) {
    return Positioned(
      right: right,
      top: 0,
      bottom: 0,
//      width: width,
      child: Container(
        constraints: BoxConstraints(
          minWidth: 30,
        ),
        color: color,
        child: IconButton(
          tooltip: "评论按钮",
          icon: Icon(icon),
          iconSize: 14,
          color: UColor.CAFAFAF,
          onPressed: block,
        ),
      ),
    );
  }
}
