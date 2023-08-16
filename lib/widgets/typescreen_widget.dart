import 'package:flutter/material.dart';

class TypeScreen extends StatefulWidget {
  const TypeScreen({super.key});

  @override
  State<TypeScreen> createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.6,
      child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Enter Digit',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {});
          }),
    );
  }
}

class TypeScreen2 extends StatefulWidget {
  const TypeScreen2({super.key});

  @override
  State<TypeScreen2> createState() => _TypeScreen2State();
}

class _TypeScreen2State extends State<TypeScreen2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.6,
      child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Enter Digit',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {});
          }),
    );
  }
}
