import 'package:flutter/material.dart';
import 'main_drawer.dart';

class ScreenSkeleton extends StatelessWidget {
  final String appBarTitle;
  final PreferredSizeWidget appBarTabBar;
  final Widget scaffoldBody;

  ScreenSkeleton({this.appBarTitle, this.appBarTabBar, this.scaffoldBody});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: TextStyle(
            color: Color(0xff01192C),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 25.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 25.0,
            ),
            onPressed: () {},
          ),
        ],
        bottom: appBarTabBar,
      ),
      drawer: MainDrawer(),
      body: scaffoldBody,
    );
  }
}
