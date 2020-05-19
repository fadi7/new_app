import 'package:flutter/material.dart';

class AppBarss extends StatelessWidget {
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
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
            Icons.search,
            size: 25.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
