import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return _bmi >= 25 ? 'OVERWEIGHT' : _bmi > 18.5 ? 'NORMAL' : 'UNDERWEIGHT';
  }

  String interpretResult() {
    return _bmi >= 25
        ? 'You have a higher than average body weight. To help lower your BMI, you can exercise more and/or adjust what you eat.'
        : _bmi > 18.5
            ? 'You have an average body weight. Great work!'
            : 'You have a lower than average body weight. Try dialling back the exercise and/or taking in more calories.';
  }
}
