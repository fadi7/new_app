import 'package:flutter/material.dart';
import 'package:newapp/shared_ui/main_drawer.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore',
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
        bottom: TabBar(
          indicatorColor: Color(0xff01192C),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'WHAT\'S NEW'),
            Tab(text: 'POPULAR'),
            Tab(text: 'FAVOURITE'),
          ],
        ),
      ),
      drawer: MainDrawer(),
      body: TabBarView(
        children: <Widget>[
          Text('screen 1'),
          Text('screen 2'),
          Text('screen 3'),
        ],
        controller: _tabController,
      ),
    );
  }
}
