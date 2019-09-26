
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VideoPage();
}

class _VideoPage extends State<VideoPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.red,
    );
  }
}