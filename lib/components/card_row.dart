import 'package:flutter/material.dart';
import 'package:newapp/components/time_icon.dart';
import 'package:newapp/constrains.dart';

class CardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0, bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/test.jpg'),
            height: 100.0,
            width: 100.0,
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'the World Global Warming Annual Sunnit',
                  maxLines: 3,
                  style: kCardTitleStyle,
                ),
                SizedBox(
                  height: 24.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fadi Kalash',
                      style: kCardWriterStyle,
                    ),
                    TimeIcon(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
