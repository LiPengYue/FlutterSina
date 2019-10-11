import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fullter_sina/api/data_utils/data_utils.dart';
import 'package:fullter_sina/models/home_time_line_entity.dart';
import 'package:fullter_sina/views/homePage/home_focus_item.dart';

import 'package:flutter/cupertino.dart' as IOS;
import 'package:fullter_sina/utils/refresh_sliver.dart';

class HomeFocusWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeFocusWidget();
}

class _HomeFocusWidget extends State<HomeFocusWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final GlobalKey<CupertinoSliverRefreshControlState> sliverRefreshKey =
      GlobalKey<CupertinoSliverRefreshControlState>();

  HomeTimeLineEntity homeEntity;
  final ScrollController _scrollController = new ScrollController();
  bool disposed = false;
  int pageSize = 20;

  bool isError = false;

  @override
  void initState() {
    super.initState();
    _reloadData();
  }

  List<HomeTimeLineStatus> statuses;
  int _currentPage = 1;

  _reloadData() {
    _currentPage = 1;
    DataUtils.getHomeList(_currentPage).then((map) {
      setState(() {
        isError = false;
        homeEntity = HomeTimeLineEntity.fromJson(Map.from(map));
        statuses = homeEntity.statuses;
        _currentPage += 1;
      });
    }).catchError((e) {
      isError = true;
      setState(() {
      });
    });
  }

  _getMoreData() {

    DataUtils.getHomeList(_currentPage + 1).then((map) {
      setState(() {
        isError = false;
        homeEntity = HomeTimeLineEntity.fromJson(Map.from(map));
        if (_currentPage == 1) {
          statuses = homeEntity.statuses;
        } else {
          statuses.addAll(homeEntity.statuses);
        }
        _currentPage += 1;
      });
    }).catchError((e) {
      setState(() {
        isError = true;
      });
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {

    if (isError) {
      return Container(
        child: Image.asset("images/error.png"),
      );
    }

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
      child: IOS.NotificationListener(
        onNotification: (ScrollNotification notification) {
          sliverRefreshKey.currentState.notifyScrollNotification(notification);
          if (_scrollController.position.pixels > 0 &&
              _scrollController.position.pixels ==
                  _scrollController.position.maxScrollExtent) {
            _getMoreData();
          }
          return false;
        },
        child: IOS.CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(
              parent: IOS.AlwaysScrollableScrollPhysics()),
          slivers: <Widget>[
            CupertinoSliverRefreshControl(
              key: sliverRefreshKey,
              refreshIndicatorExtent: 100,
              refreshTriggerPullDistance: 140,
              onRefresh: onRefresh,
              builder: buildSimpleRefreshIndicator,
            ),
            SliverSafeArea(
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (statuses.length <= index) {
                      return new Container(
                        margin: EdgeInsets.all(10),
                        child: Align(
                          child: IOS.CupertinoActivityIndicator(radius: 15,),
                        ),
                      );
                    }

                    return HomeFocusItem(
                        homeTimeLineStatus: statuses[index], index: index);
                  },
                  childCount: statuses.length >= pageSize
                      ? statuses.length + 1
                      : statuses.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onRefresh() async {
    _currentPage = 1;
    Map map = await DataUtils.getHomeList(_currentPage);
    statuses = homeEntity.statuses;
    isError = false;
    _currentPage += 1;
    if (disposed) {
      return;
    }
    setState(() {});
  }
}

Widget buildSimpleRefreshIndicator(
  BuildContext context,
  RefreshIndicatorMode refreshState,
  double pulledExtent,
  double refreshTriggerPullDistance,
  double refreshIndicatorExtent,
) {
  const Curve opacityCurve = Interval(0.4, 0.8, curve: Curves.easeInOut);
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: refreshState != RefreshIndicatorMode.refresh
          ? Opacity(
              opacity: opacityCurve.transform(
                  min(pulledExtent / refreshTriggerPullDistance, 1.0)),
              child: const Icon(
                Icons.keyboard_arrow_down,
                color: IOS.CupertinoColors.inactiveGray,
                size: 36.0,
              ),
            )
          : Opacity(
              opacity: opacityCurve
                  .transform(min(pulledExtent / refreshIndicatorExtent, 1.0)),
              child: const IOS.CupertinoActivityIndicator(radius: 14.0),
            ),
    ),
  );
}
