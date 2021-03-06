import 'package:flutter/material.dart';
import 'package:newapp/shared_ui/screen_skeleton.dart';

import 'home_tabs/tab_one.dart';
import 'home_tabs/tab_two.dart';
import 'home_tabs/tab_three.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenSkeleton(
      appBarTitle: 'Explore',
      appBarTabBar: TabBar(
        indicatorColor: Color(0xff01192C),
        controller: _tabController,
        tabs: <Widget>[
          Tab(text: 'WHAT\'S NEW'),
          Tab(text: 'POPULAR'),
          Tab(text: 'FAVOURITE'),
        ],
      ),
      scaffoldBody: TabBarView(
        children: <Widget>[
          TabOne(),
          TabTwo(),
          TabThree(),
        ],
        controller: _tabController,
      ),
    );
  }
}
