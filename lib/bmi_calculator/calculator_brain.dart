import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overvektig';
    } else if (_bmi > 18.5) {
      return 'Normal vekt';
    } else {
      return 'Undervektig';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Du har høyere enn normal bmi. Prøv å trene mer.';
    } else if (_bmi > 18.5) {
      return 'Du har normal bmi. Bra jobba!';
    } else {
      return 'Du har lavere enn normal bmi. Du kan spise mer.';
    }
  }
}
