import 'dart:ui';

import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  final Widget CardChild;
  final Color cardcolor;
  MyCard({this.CardChild, this.cardcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: cardcolor,

      ),
      child: CardChild,
    );
  }
}