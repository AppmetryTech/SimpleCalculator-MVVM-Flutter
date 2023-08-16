import 'package:calculator/model/calculator_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MyCalculator calculate = MyCalculator();
  testWidgets('Addition Test', (tester) async {
    //MyCalculator calculate = MyCalculator();
    expect(calculate.addition(0.0, 1.0), 1.0);
    expect(calculate.addition(0.0, 0.0), 0.0);
    expect(calculate.addition(-1.0, 1.0), 0.0);
  });

  testWidgets('Substraction Test', (tester) async {
    expect(calculate.substraction(1.0, 1.0), 0.0);
    expect(calculate.substraction(0.1, 1.0), -0.9);
    expect(calculate.substraction(-1.5, 1.5), -3.0);
  });
}
