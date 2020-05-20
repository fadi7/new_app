import 'package:flutter/material.dart';

class TabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          color: Color(0XFF1a2f41),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _drawAuthorRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }

  Widget _drawAuthorRow() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.amber,
        ),
      ],
    );
  }
}
