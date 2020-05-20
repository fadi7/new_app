import 'package:flutter/material.dart';
import 'package:newapp/components/time_icon.dart';
import 'package:newapp/constrains.dart';

class WideCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 10.0,
      color: Color(0XFF1a2f41),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/test.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.redAccent,
            ),
            child: Text(
              'SPORT',
              style: kTagTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Vittel is Ferrari Number One - Hamilton',
              style: kCardTitleStyle,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
            child: TimeIcon(),
          ),
        ],
      ),
    );
  }
}
