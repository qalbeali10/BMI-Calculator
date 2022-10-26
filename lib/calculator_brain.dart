// ignore_for_file: camel_case_types
import 'dart:math';

class calculatorBrain {
  calculatorBrain({required this.height, required this.weight});
  final int? height;
  final int? weight;
  double? _bmi;
  String calculateBMI() {
    _bmi = (weight! / pow(height! / 100, 2));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return "overweighted";
    } else if (_bmi! > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }
  String getInterpretation(){
     if (_bmi! >= 25) {
      return "You have higher than normal body weight, try to exercise more!";
    } else if (_bmi! > 18.5) {
      return "You have normal body weight, Good job";
    } else {
      return "you have lower than normal body weight you eat a bit more";
    }

  }
}
