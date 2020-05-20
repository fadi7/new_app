import 'package:flutter/material.dart';
import 'package:newapp/components/time_icon.dart';
import 'package:newapp/constrains.dart';

class CardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage('assets/images/test.jpg'),
        fit: BoxFit.cover,
        height: double.infinity,
      ),
      title: Text(
        'the World Global Warming Annual Sunnit',
        maxLines: 3,
        style: kCardTitleStyle,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
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
      ),
    );
  }
}
