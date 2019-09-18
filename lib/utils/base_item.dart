import 'package:fullter_sina/api/api.dart';
import 'package:flutter/material.dart';
import 'package:fullter_sina/api/net_utils/net_utils.dart';
import 'package:fullter_sina/routes/Application.dart';
import 'package:fullter_sina/routes/route.dart';
import 'u_color.dart';
import 'package:fullter_sina/api/data_utils/data_utils.dart';
import 'package:fullter_sina/routes/Application.dart';

class BaseItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BaseItem();
}

class _BaseItem extends State<BaseItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: UColor.CFFFFFF,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            color: UColor.CEFEFEF,
            height: 10,
          ),
          _createUserInfo(),
          _createDescription(),
          _createImage(),
          _createPopleFeedback()
        ],
      ),
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
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567663863528&di=4f6e740aaffece6049fd27ee0f3db5a1&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FHa0yIZWZzMeg0_1tYk0SdQ%3D%3D%2F5698742378500849162.jpg"),
                  placeholder: AssetImage("Sina_LOGO64.png"),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: UColor.CE79936, width: 1),
              ),
            ),
          ),
        ),

        // nameText("尘经墙_fr"),
        Positioned(
          top: 10,
          left: 65,
          right: 20,
          child: Text.rich(
            TextSpan(
              text: "尘经墙_fr" + "\n",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: UColor.C333333,
              ),
              children: [
                TextSpan(
                  text: "三分钟 来自微博 weibo.com",
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
        ),

        // 右边的 下箭头
        Positioned(
          height: 10,
          width: 10,
          right: 14,
          top: 12,
          child: GestureDetector(
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: UColor.CAFAFAF,
            ),
            onTap: () {
              _clickDownArrow();
            },
          ),
        ),
      ],
    );
  }

  _createDescription() {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14, bottom: 8),
      child: Text.rich(
        TextSpan(
          text:
              """For most fonts, setting [height] to 1.0 is not the same as omitting or
            setting height to null because the [fontSize] sets the height of the EM-square,
            which is different than the font provided""",
          style: TextStyle(
            color: UColor.C333333,
          ),
        ),
      ),
    );
  }

  _createImage() {
    return Container(
      padding: EdgeInsets.only(top: 8,bottom: 5),
      child: Align(
        child: FadeInImage(
          image: NetworkImage(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567663863528&di=4f6e740aaffece6049fd27ee0f3db5a1&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FHa0yIZWZzMeg0_1tYk0SdQ%3D%3D%2F5698742378500849162.jpg"),
          placeholder: AssetImage("Sina_LOGO64.png"),
        ),
      ),
    );
  }

  _createPopleFeedback() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 8, left: 0, right: 0),
      height: 45,
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
              _clickDownArrow();
            },
          ),
          // 评论
          FlatButton.icon(
            padding: EdgeInsets.only(top: 10),
            splashColor: Colors.white,
            icon: Icon(
              Icons.toc,
              color: UColor.CAFAFAF,
              size: 16,
            ),
            label: Text(
              "评论",
              style: TextStyle(
                  color: UColor.CAFAFAF,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            onPressed: () {
              var data = DataUtils.logIn({});

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
              "赞",
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
  _clickDownArrow() {
    print("点击了 _clickDownArrow");
    Application.navigateTo(context, "${Routers.GoOauth}?data=${1}");
  }

  static double getHeight() {
    return 120.0;
  }
}
