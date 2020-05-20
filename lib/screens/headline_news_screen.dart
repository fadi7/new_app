import 'package:flutter/material.dart';
import 'package:newapp/shared_ui/screen_skeleton.dart';

import 'home_tabs/tab_three.dart';
import 'home_tabs/tab_two.dart';

class HeadlineNewsScreen extends StatefulWidget {
  static String id = 'headline_news_screen';

  @override
  _HeadlineNewsScreenState createState() => _HeadlineNewsScreenState();
}

class _HeadlineNewsScreenState extends State<HeadlineNewsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
      appBarTitle: 'News',
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
          TabThree(),
          TabTwo(),
          TabThree(),
        ],
        controller: _tabController,
      ),
    );
  }
}
