import 'package:flutter/material.dart';
import 'package:simple_calculator/model/calculations.dart';
import 'package:simple_calculator/view/calculator_button.dart';
import 'package:simple_calculator/view/operation_button.dart';


class CalculatorRow extends StatelessWidget {
  CalculatorRow({@required this.buttons,  @required this.onTap });

  final List<String> buttons;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: rowButtons(),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }


  List<Widget> rowButtons() {
    List<Widget> rowButtons = [];

    buttons.forEach((String buttonText) {
      if (Calculations.OPERATIONS.contains(buttonText) || 
          Calculations.CLEAR.contains(buttonText) ||
          Calculations.DELETE.contains(buttonText)) {

        rowButtons.add(
          OperationButton(
            text: buttonText,
            onTap: onTap,
          ),
        );

      } else {
        rowButtons.add(
          CalculatorButton(
            text: buttonText,
            onTap: onTap,
          ),
        );
      }

    });

    return rowButtons;
  }

}