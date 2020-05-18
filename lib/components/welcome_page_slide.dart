import 'package:flutter/material.dart';
import 'package:newapp/constrains.dart';

class WelcomePageSlide extends StatelessWidget {
  final AssetImage image;
  final String tittle;
  final String description;

  WelcomePageSlide({this.image, this.tittle, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            width: 150.0,
            height: 150.0,
            image: image,
          ),
          SizedBox(
            height: 48.0,
          ),
          Text(
            this.tittle,
            style: kWelcomeTitleStyle,
          ),
          Text(
            this.description,
            textAlign: TextAlign.center,
            style: kWelcomeDescriptionStyle.copyWith(),
          ),
          SizedBox(
            height: 48.0,
          ),
        ],
      ),
    );
  }
}
