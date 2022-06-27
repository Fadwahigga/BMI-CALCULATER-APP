// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:bmi_calculator/formula.dart';
import 'package:flutter/material.dart';

class resultPage extends StatefulWidget {
  int? age;
  int? weight;
  int? height;
  resultPage({Key? key, @required this.height, @required this.weight, this.age})
      : super(key: key);

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height!, widget.weight!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "BMI Result",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              bmiResult.toStringAsFixed(1),
              style: const TextStyle(fontSize: 40, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
