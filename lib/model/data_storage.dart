import 'dart:convert';
import 'dart:io';

import '../viewModel/calculator_view.dart';

/*class FileHelper {
  static Future<void> saveValues(int input1, int input2, int result) async {
    final data = {
      'input1': input1,
      'input2': input2,
      'result': result,
    };

    final file = File('data.json');
    await file.writeAsString(jsonEncode(data));
  }

  static Future<void> loadValues(CalculatorViewModel viewModel) async {
    try {
      final file = File('data.json');
      if (file.existsSync()) {
        final jsonData = await file.readAsString();
        final data = jsonDecode(jsonData);
        final input1 = data['input1'] ?? 0;
        final input2 = data['input2'] ?? 0;
        final result = data['result'] ?? 0;

        viewModel.input1 = input1.toint();
        viewModel.input2 = input2.toint();
        viewModel.calculateResult();
      }
    } catch (e) {
      print('Error loading data: $e');
    }
  }
}*/

class FileHelper {
  static Future<void> saveValues(
      double input1, double input2, double result) async {
    final data = {
      'input1': input1,
      'input2': input2,
      'result': result,
    };

    final file = File('data.json');
    await file.writeAsString(jsonEncode(data));
  }

  static Future<void> loadValues(CalculatorViewModel viewModel) async {
    try {
      final file = File('data.json');
      if (file.existsSync()) {
        final jsonData = await file.readAsString();
        final data = jsonDecode(jsonData);
        final input1 = data['input1'] ?? 0.0;
        final input2 = data['input2'] ?? 0.0;
        final result = data['result'] ?? 0.0;

        viewModel.input1 = input1;
        viewModel.input2 = input2;
        viewModel.calculateSubtraction();
        viewModel.calculateAddition();
        viewModel.calculateMultiplication();
      }
    } catch (e) {
      print('Error loading data: $e');
    }
  }
}
