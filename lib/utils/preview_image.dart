
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class PreviewImageItem extends StatefulWidget {
String url;
PreviewImageItem({this.url});

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PreviewImageItem();
  }
}

class _PreviewImageItem extends State<PreviewImageItem> {
@override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    body:Hero(
      tag: "lookImage",
      child: ExtendedImage.network(widget.url
      ),
    )
  );
  }

}