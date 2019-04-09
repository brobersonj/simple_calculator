import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator/model/calculations.dart';
import 'package:simple_calculator/utils/number_formatter.dart';

ContextModel contextModel = new ContextModel();
Expression _lastExpression;
String _result;

class CalculationService {

  static String parseInput(String input) {
    _setExpr(input.trim());
    
    return _result;
  }


  static void _setExpr(String input) {
    var expr = new Parser().parse(input);

    _lastExpression = expr;
    _evaluate();
  }

  static void _evaluate() {
    double eval = _lastExpression.evaluate(EvaluationType.REAL, contextModel);
    _result = NumberFormatter.format(eval.toString());

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