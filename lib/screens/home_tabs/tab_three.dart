import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/constrains.dart';
import 'dart:math';

class TabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          color: Color(0XFF1a2f41),
          child: Container(
            //padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _drawAuthorRow(),
                _drawBodyRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }

  List<Color> _colorsList = [
    Colors.redAccent,
    Colors.deepOrangeAccent,
    Colors.blueGrey,
    Colors.greenAccent,
  ];
  Color _getRandomColor() {
    return _colorsList[Random().nextInt(_colorsList.length)];
  }

  Widget _drawAuthorRow() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/test.jpg'),
      ),
      title: Text(
        'Fadi Kalash',
        style: kCardBodyTextStyle.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Text(
            '15 min .',
            style: kCardBodyTextStyle,
          ),
          Text(
            'Lifestyle',
            style: TextStyle(color: _getRandomColor()),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.bookmark_border,
          color: Color(0xff99a3aa),
        ),
      ),
    );
  }

  Widget _drawBodyRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/test.jpg'),
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'the World Global Warming Annual Sunnit',
                  maxLines: 3,
                  style: kCardTitleStyle,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: kCardWriterStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
