import 'package:calculator/calculator_model.dart';
import 'package:calculator/calculator_view_model.dart';
import 'package:calculator/dataservice.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Save AdditionTest', (tester) async {
    final calculator = Calculator();
    final dataSave = DataService();
    final addition = ShowAdditionScreen(calculator, dataSave);
    //ShowAdditionScreen addition = ShowAdditionScreen(Calculator(), DataSave());
    addition.firstDigit(15);
    addition.secondDigit(5);
    addition.addButtonPressed();
    await addition.dataCalculation();
    expect(dataSave.dataList, equals([15, 5, 20]));
  });
}
