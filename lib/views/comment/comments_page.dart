import 'package:flutter/material.dart';
import 'package:fullter_sina/api/data_utils/data_utils.dart';
import 'package:fullter_sina/models/comment_entity.dart';
import 'package:fullter_sina/routes/Application.dart';
import 'package:fullter_sina/utils/u_color.dart';
import 'package:fullter_sina/views/comment/comment_item.dart';
import 'package:fullter_sina/utils/navigation_title.dart';

class CommentsPage extends StatefulWidget {
  int commentId;

  CommentsPage({this.commentId});

  @override
  State<StatefulWidget> createState() => _CommentsWidget();
}

class _CommentsWidget extends State<CommentsPage>
    with AutomaticKeepAliveClientMixin {
  CommentEntity _commentEntity;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    DataUtils.getCommentsWithId(widget.commentId).then((map) {
      setState(() {
        _commentEntity = CommentEntity.fromJson(Map.from(map));
      });
    }).catchError((e) {
      print(e);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: UColor.C333333,
              onPressed: () {
                Application.router.pop(context);
              },
            );
          },
        ),
        title: NavigationTitle(title: "评论"),
      ),
      body: _createMainView(),
    );
  }

  _createMainView() {
    if (_commentEntity == null) {
      return Container(
        alignment: Alignment.center,
        child: Text("加载中"),
      );
    }

    if (_commentEntity.comments.length <= 0) {
      return Container(
        alignment: Alignment.center,
        child: Text("暂无数据"),
      );
    }

    return ListView.builder(
        itemCount: _commentEntity.comments.length,
        itemBuilder: (BuildContext context, int index) {
          return CommentItem(comment: _commentEntity.comments[index]);
        });
  }
}
