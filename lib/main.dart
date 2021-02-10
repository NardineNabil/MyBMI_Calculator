import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InputePage.dart';
void main() {
  runApp(BmiCalculator(),);
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor: Color(0xFF0f1123),
      scaffoldBackgroundColor:Color(0xFF0f1123)
      ),
      home:InputPage(),
    );
  }
}



