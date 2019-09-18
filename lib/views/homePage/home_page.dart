import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'home_focus_widget.dart'; // 关注
import 'home_hot_widget.dart'; // 热门

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  List<Widget> _titleBarWidgetList1;
  List<Widget> _titleBarWidgetList2;
  List<String> _titleBarStrList = ["关注", "热门"];
  List<Widget> _tabBatViewList;

  TabController _tabController;

  int _currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabBatViewList = [HomeFocusWidget(), HomeHotWidget()];

    _tabController =
        TabController(vsync: this, length: _titleBarStrList.length);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _createAppBarTitle(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabBatViewList,
      ),
    );
  }

  Widget _createAppBarTitle() {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.orangeAccent,
      labelColor: Colors.black87,
      unselectedLabelColor: Colors.black45,
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.only(left: 10,right: 10,top: 0,bottom: 10),
      tabs: List.generate(this._titleBarStrList.length, (i) {
        return Text(_titleBarStrList[i],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),);
      }),

      onTap: (index) {
        setState(() {
          _currentSelectedIndex = index;
        });
      },
    );
  }
}
