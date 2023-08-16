import 'package:flutter/material.dart';

import '../model/calculator_model.dart';

import '../model/data_storage.dart';

class CalculatorViewModel extends ChangeNotifier {
  // CalculationModel model = CalculationModel();
  MyCalculator calculator = MyCalculator();
  late FileHelper helper;

  double input1 = 0.0;
  double input2 = 0.0;
  double result = 0.0;

  void calculateAddition() {
    //result = model.add(input1, input2);
    result = calculator.addition(input1, input2);
    notifyListeners();
  }

  void calculateSubtraction() {
    result = calculator.substraction(input1, input2);
    notifyListeners();
  }

  void calculateMultiplication() {
    result = calculator.multiplication(input1, input2);
    notifyListeners();
  }

  Future<void> saveValues() async {
    await FileHelper.saveValues(input1, input2, result);
  }

  Future<void> loadValues() async {
    await FileHelper.loadValues(this);
  }
}
