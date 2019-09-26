import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fullter_sina/api/data_utils/data_utils.dart';
import 'package:fullter_sina/models/home_time_line_entity.dart';
import 'package:fullter_sina/views/homePage/home_focus_item.dart';

class HomeFocusWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeFocusWidget();
}

class _HomeFocusWidget extends State<HomeFocusWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  bool isError = false;
  HomeTimeLineEntity homeEntity;

  @override
  void initState() {
    super.initState();
    _reloadData();
  }

  List<HomeTimeLineStatus> statuses;
  int _currentPage = 1;

  _reloadData() {
    _currentPage = 1;
    _getMoreData();
  }

  _getMoreData() {
    DataUtils.getHomeList(_currentPage).then((map) {
      setState(() {
        homeEntity = HomeTimeLineEntity.fromJson(Map.from(map));
        if (_currentPage == 1) {
          statuses = homeEntity.statuses;
        }else{
          statuses.addAll(homeEntity.statuses);
        }
        _currentPage += 1;
      });
    }).catchError((e) {
      setState(() {
//        homeEntity = HomeTimeLineEntity.fromJson(
//            Map.from(json.decode(DataUtils.jsonStr)));
        statuses = homeEntity.statuses;
      });
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (homeEntity == null || homeEntity.statuses.length <= 0) {
      return Container(
        child: Text(
          "加载中",
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      );
    }

    return Container(
//      child: RefreshIndicator(
        child: ListView.builder(
          itemCount: statuses.length,
          itemBuilder: (BuildContext context, int idex) {
            return HomeFocusItem(
                homeTimeLineStatus: statuses[idex], index: idex);
          },
//        ),
//        onRefresh: (){
//          _reloadData();
//        },
      ),
    );
  }
}
