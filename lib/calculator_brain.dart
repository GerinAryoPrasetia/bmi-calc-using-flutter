import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {

  CalculatorBrain({@required this.weight, @required this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'Kurangi lemak dan rajin olahraga!';
    } else if (_bmi > 18.5) {
      return 'Sudah bagus, Pertahankan!';
    } else {
      return 'Perbanyaklah makan untuk tambah berat badanmu';
    }
  }
}

