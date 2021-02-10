import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculator {
  int height;
  int weight;
  double _BMI;
  BMICalculator({this.height, this.weight});
  String CalculateMyBMI() {
    _BMI = weight / pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String DetermineStatus() {
    if (_BMI >= 25)
      return 'OVERWEIGHT';
    else if (_BMI > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String GetInterpretation() {
    if (_BMI >= 25)
      return 'you are overweight! try to exercise drink more water...';
    else if (_BMI > 18.5)
      return 'You weight is perfect  ! Good Job';
    else
      return 'You have lower than normal weight.you can eat more food';
  }
}
