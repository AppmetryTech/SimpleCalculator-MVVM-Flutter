import 'package:calculator/view/homepage.dart';
import 'package:calculator/viewModel/calculator_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // late final CalculatorViewModel viewModel;
  final CalculatorViewModel viewModel = CalculatorViewModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 9, 7, 9)),
        useMaterial3: true,
      ),
      home: CalculatorPage(viewModel: viewModel),
    );
  }
}
