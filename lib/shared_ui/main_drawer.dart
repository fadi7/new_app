import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: make the drawer
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(right: 16.0, left: 48.0, top: 80.0),
        color: Color(0xff01192C),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                'HOME',
                style: TextStyle(color: Color(0xfffff1d2), fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xfffff1d2),
              ),
              onTap: () {},
            );
          },
          itemCount: 7,
        ),
      ),
    );
  }
}
