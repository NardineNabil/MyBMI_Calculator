import 'package:flutter/material.dart';
import 'Constants.dart';
class MyIcon extends StatelessWidget {
  final String text;
  final IconData myicon;
  MyIcon({this.text, this.myicon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myicon,
          size: 30.0,
          color: Colors.white,
        ),
        SizedBox(height: 20.0),
        Text(
          text,
          style: MytextStyle
        ),
      ],
    );
  }
}
