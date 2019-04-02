import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
      ),
      home: CalculatorHomePage(title: 'Simple Calculator'),
    );
  }
}


class CalculatorHomePage extends StatefulWidget {
  CalculatorHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}


class _CalculatorHomePageState extends State<CalculatorHomePage> {
  bool isNewEquation = true;
  List<double> values = [];
  List<String> operations = [];
  List<String> calculations = [];
  String calculatorString = '';
  Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.brightness_3),
                onPressed: () {
                  _changeThemeBrightness(context);
                },
              ),
            ],
          ), 
        ),
        body: Column(
          children: <Widget>[
            //NumberDisplay(value: calculatorString),
            //CalculatorButtons(onTap: _onPressed),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ));
  }

  _changeThemeBrightness(BuildContext context) async {
      setState(() {
        //brightness = context.;
        //isNewEquation = false;
        //calculatorString = Calculator.parseString(result);
      });
    
  }

  // void _onPressed({String buttonText}) {
  //   // Standard mathematical operations
  //   if (Calculations.OPERATIONS.contains(buttonText)) {
  //     return setState(() {
  //       operations.add(buttonText);
  //       calculatorString += " $buttonText ";
  //     });
  //   }

  //   // On CLEAR press
  //   if (buttonText == Calculations.CLEAR) {
  //     return setState(() {
  //       operations.add(Calculations.CLEAR);
  //       calculatorString = "";
  //     });
  //   }

  //   // On Equals press
  //   if (buttonText == Calculations.EQUAL) {
  //     String newCalculatorString = Calculator.parseString(calculatorString);

  //     return setState(() {
  //       if (newCalculatorString != calculatorString) {
  //         // only add evaluated strings to calculations array
  //         calculations.add(calculatorString);
  //       }

  //       operations.add(Calculations.EQUAL);
  //       calculatorString = newCalculatorString;
  //       isNewEquation = false;
  //     });
  //   }

  //   if (buttonText == Calculations.PERIOD) {
  //     return setState(() {
  //       calculatorString = Calculator.addPeriod(calculatorString);
  //     });
  //   }

  //   setState(() {
  //     if (!isNewEquation
  //         && operations.length > 0
  //         && operations.last == Calculations.EQUAL
  //     ) {
  //       calculatorString = buttonText;
  //       isNewEquation = true;
  //     } else {
  //       calculatorString += buttonText;
  //     }
  //   });
  //}
}