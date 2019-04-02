import 'package:flutter/material.dart';
import 'package:simple_calculator/model/calculations.dart';
import 'package:simple_calculator/view/calculator_button.dart';
import 'package:simple_calculator/view/calculator_row.dart';

class CalculatorButtons extends StatelessWidget {
  CalculatorButtons({@required this.onTap});

  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CalculatorRow(
          buttons: [Calculations.CLEAR, Calculations.DELETE, Calculations.PERCENT, Calculations.DIVIDE], 
          onTap: onTap,
        ),
        CalculatorRow(
          buttons: ['7', '8', '9', Calculations.MULTIPLY], 
          onTap: onTap,
        ),
        CalculatorRow(
          buttons: ['4', '5', '6', Calculations.ADD], 
          onTap: onTap,
        ),
        CalculatorRow(
          buttons: ['1', '2', '3', Calculations.SUBTRACT], 
          onTap: onTap,
        ),
        CalculatorRow(
          buttons: ['0', Calculations.PERIOD, Calculations.EQUAL], 
          onTap: onTap,
        ),
      ],
    );
  }
}