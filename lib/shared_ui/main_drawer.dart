import 'package:flutter/material.dart';
import 'package:newapp/models/nav_menu.dart';
import 'package:newapp/screens/headline_news_screen.dart';
import 'package:newapp/screens/home_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  final List<NavMenuItem> _navMenu = [
    NavMenuItem(title: 'Explore', screenId: HomeScreen.id),
    NavMenuItem(title: 'Headline News', screenId: HeadlineNewsScreen.id),
    NavMenuItem(title: 'Read Later', screenId: HeadlineNewsScreen.id),
    NavMenuItem(title: 'Videos', screenId: HeadlineNewsScreen.id),
    NavMenuItem(title: 'Photos', screenId: HeadlineNewsScreen.id),
    NavMenuItem(title: 'Setting', screenId: HeadlineNewsScreen.id),
    NavMenuItem(title: 'Logout', screenId: HeadlineNewsScreen.id),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: make the drawer
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.only(right: 16.0, left: 48.0, top: 80.0),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              _navMenu[index].title,
              style: TextStyle(color: Color(0xfffff1d2), fontSize: 16.0),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Color(0xfffff1d2),
            ),
            onTap: () {
              Navigator.pushNamed(context, _navMenu[index].screenId);
            },
          );
        },
        itemCount: _navMenu.length,
      ),
    );
  }
}
