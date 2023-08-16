abstract class Calculator {
  double addition(var a, var b);
  double substraction(var a, var b);
  double multiplication(var a, var b);
}

/*class CalculationModel {
  int add(var a, var b) {
    return a + b;
  }
}*/

class MyCalculator implements Calculator {
  @override
  double addition(a, b) {
    return a + b;
  }

  @override
  double substraction(a, b) {
    return a - b;
  }

  @override
  double multiplication(a, b) {
    return a * b;
  }
}
