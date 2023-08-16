import 'package:flutter/material.dart';

import '../viewModel/calculator_view.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key, required this.viewModel});
  final CalculatorViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('C A L C U L A T O R'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              height: 150,
              width: screenWidth,
              color: const Color.fromARGB(255, 85, 160, 213),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "RESULT ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Text(
                      '${viewModel.result}',
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Divider(
              color: Colors.blueGrey,
              indent: 5,
              endIndent: 5,
              thickness: 3,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: screenWidth * 0.6,
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Number 1',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    viewModel.input1 = double.tryParse(value) ?? 0.0;
                  }),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: screenWidth * 0.6,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Number 2',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  viewModel.input2 = double.tryParse(value) ?? 0.0;
                },
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _StyledIconButton(
                  onPressed: () async {
                    viewModel.calculateAddition();
                  },
                  icon: Icons.add,
                ),
                _StyledIconButton(
                  onPressed: () async {
                    viewModel.calculateSubtraction();
                  },
                  icon: Icons.remove,
                ),
                _StyledIconButton(
                  onPressed: () async {
                    viewModel.calculateMultiplication();
                  },
                  icon: Icons.close,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StyledIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const _StyledIconButton({
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = Colors.black; // Define the color here
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 197, 243),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.purple, width: 2),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 38,
          color: iconColor, // Use the defined color
        ),
      ),
    );
  }
}
 
/*class CalculatorPage extends StatefulWidget {
  const CalculatorPage(
      {super.key, required this.title, required this.viewModel});
  final String title;
  final CalculatorViewModel viewModel;

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              height: 150,
              width: screenWidth,
              color: const Color.fromARGB(255, 85, 160, 213),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "RESULT ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Text(
                      '${viewModel.result}',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Divider(
              color: Colors.blueGrey,
              indent: 5,
              endIndent: 5,
              thickness: 3,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: screenWidth * 0.6,
              child: TextFormField(
                  controller: _num1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Number 1',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  }),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: screenWidth * 0.6,
              child: TextFormField(
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Number 2',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
                onPressed: () async {
                  int num1 = int.tryParse(_num1.text) ?? 0;
                  int num2 = int.tryParse(_num2.text) ?? 0;
                },
                child: const Text("ADD NUMBERS")),
          ],
        ),
      ),
    );
  }
}*/
