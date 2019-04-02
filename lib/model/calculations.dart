
class Calculations {
  static const PERIOD = '.';
  static const MULTIPLY = '*';
  static const SUBTRACT = '-';
  static const ADD = '+';
  static const DIVIDE = '/';
  static const PERCENT = '%';
  static const CLEAR = 'CLEAR';
  static const DELETE = 'DELETE';
  static const EQUAL = '=';
  static const OPERATIONS = [
    Calculations.ADD,
    Calculations.MULTIPLY,
    Calculations.SUBTRACT,
    Calculations.DIVIDE,
  ];

  static double add(double a, double b) {
    return a + b;

  }


  static double subtract(double a, double b) {
    return a - b;

  }


  static double divide(double a, double b) {
    return a / b;

  }


  static double multiply(double a, double b) {
    return a * b;

  }

}