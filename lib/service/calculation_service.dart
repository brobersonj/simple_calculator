
import 'dart:collection';

import 'package:simple_calculator/model/calculations.dart';
import 'package:simple_calculator/utils/number_formatter.dart';

class CalculationService {
  static Queue<String> convertInfixToRPN(String text) {
    Queue<String> queue = new Queue<String>();
    Queue<String> stack = new Queue<String>();
    List<String> infixNotation = text.split(",");

    //for (String )


    return queue;
  }
  static String parseString(String text) {
    // List<String> numbersToCalculate;
    // double a;
    // double b;
    // double result;

    // if (text.contains(Calculations.ADD)) {
    //   numbersToCalculate = text.split(Calculations.ADD);
    //   a = double.parse(numbersToCalculate[0]);
    //   b = double.parse(numbersToCalculate[1]);
    //   result = Calculations.add(a, b);
    
    // } else if (text.contains(Calculations.MULTIPLY)) {
    //   numbersToCalculate = text.split(Calculations.MULTIPLY);
    //   a = double.parse(numbersToCalculate[0]);
    //   b = double.parse(numbersToCalculate[1]);
    //   result = Calculations.multiply(a, b);

    // } else if (text.contains(Calculations.SUBTRACT)) {
    //   numbersToCalculate = text.split(Calculations.SUBTRACT);
    //   a = double.parse(numbersToCalculate[0]);
    //   b = double.parse(numbersToCalculate[1]);
    //   result = Calculations.subtract(a, b);

    // } else if (text.contains(Calculations.DIVIDE)) {
    //   numbersToCalculate = text.split(Calculations.DIVIDE);
    //   a = double.parse(numbersToCalculate[0]);
    //   b = double.parse(numbersToCalculate[1]);
    //   result = Calculations.divide(a, b);
    
    // } else {
    //   return text;
    
    // }

    // return NumberFormatter.format(result.toString());
  }


  static String addPeriod(String calculatorString) {
    if (calculatorString.isEmpty) {
      return calculatorString = '0${Calculations.PERIOD}';
    }

    RegExp exp = new RegExp(r"\d\.");
    Iterable<Match> matches = exp.allMatches(calculatorString);
    int maxMatches = CalculationService.includesOperation(calculatorString) ? 2 : 1;

    return matches.length == maxMatches
      ? calculatorString
      : calculatorString += Calculations.PERIOD;

  }

  static bool includesOperation(String calculatorString) {
    for (var operation in Calculations.OPERATIONS) {
      if (calculatorString.contains(operation)) {
        return true;
      }
    }

    return false;
  }

}