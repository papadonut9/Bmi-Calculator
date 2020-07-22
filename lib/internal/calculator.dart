import 'package:bmicalculator/dependencies.dart';

class BMI {
  final int weight;
  final int height;

  BMI({this.height, this.weight});

  double _bmi;

  String calculate() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'O B E S E';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'O V E R W E I G H T';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'N O R M A L';
    } else {
      return 'U N D E R W E I G H T';
    }
  }

  String interpretation() {
    if (_bmi >= 30) {
      return 'Ughh, just stop drinking that G-Fuel';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Okay, you need to reduce those G-Fuels';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'It appears that you have normal weight. \n Good Job!!';
    } else {
      return 'I\'m sorry, but you have a lower body weight.\n Just eat more.';
    }
  }
}
