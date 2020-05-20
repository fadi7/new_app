import 'package:flutter/material.dart';
import 'package:newapp/components/card_row.dart';

class TabTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 16.0),
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            CardRow(),
            Divider(color: Color(0xff334656)),
          ],
        );
      },
      itemCount: 6,
    );
  }
}
