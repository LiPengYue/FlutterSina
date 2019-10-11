import 'package:flutter/material.dart';

class HeaderImage extends StatefulWidget {
  String imageUrl;

  double height;

  bool isHaveShadow;
  Color borderColor;
  Color shadowColor;
  Offset shadowOffset;
  double shadowBlurRadius;

  HeaderImage(
      {@required this.height,
      this.imageUrl,
      this.isHaveShadow,
      this.borderColor,
      this.shadowColor,
      this.shadowOffset,
      this.shadowBlurRadius});

  @override
  State<StatefulWidget> createState() => _HeaderImage();
}

class _HeaderImage extends State<HeaderImage> {
  @override
  Widget build(BuildContext context) {

    List shadowlist = widget.isHaveShadow
        ? [
            //阴影
            BoxShadow(
                color: widget.shadowColor,
                offset: widget.shadowOffset,
                blurRadius: widget.shadowBlurRadius)
          ]
        : [];

    return DecoratedBox(

      child: Container(
//        height: widget.height,
//        width: widget.height,
        padding: EdgeInsets.all(1),
        child: ClipOval(
          child: FadeInImage(
            fit: BoxFit.cover,
            image: NetworkImage(widget.imageUrl),
            placeholder: NetworkImage(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568903289436&di=dfc39cf0057ba8d2ddcd1cf20f3efc46&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F4d17253bf781347839246b716135e3851941b9c5a574-BP5WfX_fw658"),
          ),
        ),
      ),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.height / 2.0),
          border: Border.all(color: widget.borderColor, width: 1),
          boxShadow: shadowlist),
    );
  }
}
