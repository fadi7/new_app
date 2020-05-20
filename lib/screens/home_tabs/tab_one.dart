import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/components/card_row.dart';
import 'package:newapp/components/wide_card.dart';

import '../../constrains.dart';

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawHeader(),
          _drawTopStories(),
          _drawRecentUpdate(),
        ],
      ),
    );
  }

  Widget _drawRecentUpdate() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            '  Recent Updates',
            style: kSectionTitleStyle,
          ),
          SizedBox(
            height: 8.0,
          ),
          WideCard(),
          WideCard(),
        ],
      ),
    );
  }

  Widget _drawTopStories() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            '  Top Stories',
            style: kSectionTitleStyle,
          ),
          SizedBox(
            height: 8.0,
          ),
          Card(
            elevation: 10.0,
            color: Color(0XFF1a2f41),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: <Widget>[
                  CardRow(),
                  Divider(color: Color(0xff334656)),
                  CardRow(),
                  Divider(color: Color(0xff334656)),
                  CardRow(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _drawHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/rabbit.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      height: 250.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            child: Text(
              'From its medieval origins to the digital era',
              textAlign: TextAlign.center,
              style: kTextTitleStyle,
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            style: kTextSubtitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

//#
