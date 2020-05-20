import 'package:flutter/material.dart';
import 'package:newapp/constrains.dart';

class TimeIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.timer,
          size: 12.0,
          color: Color(0xff667580),
        ),
        Text(
          '15 min',
          style: kCardWriterStyle,
        ),
      ],
    );
  }
}
