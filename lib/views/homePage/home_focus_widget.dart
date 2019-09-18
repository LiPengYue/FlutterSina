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
  HomeTimeLineEntity homeEntity;

  @override
  void initState() {
    super.initState();
    DataUtils.getHomeList().then((map) {
      setState(() {
        homeEntity = HomeTimeLineEntity.fromJson(Map.from(map));
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (homeEntity == null || homeEntity.statuses.length <= 0) {
      return Container(child: Text("加载中", textAlign: TextAlign.center,),
        alignment: Alignment.center,);
    }

    return Container(
      child: ListView.builder(
//        padding:EdgeInsets.only(top: 20,bottom: 20),
        itemCount: homeEntity.statuses.length,
        itemBuilder: (BuildContext context, int idex) {
          return HomeFocusItem(
              homeTimeLineStatus: homeEntity.statuses[idex], index: idex);
        },
      ),
    );
  }
}
