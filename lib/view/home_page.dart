import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:simple_calculator/model/calculations.dart';
import 'package:simple_calculator/service/calculation_service.dart';
import 'package:simple_calculator/view/calculation_display.dart';
import 'package:simple_calculator/view/calculator_buttons.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
          primaryColor: Colors.white,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Simple Calculator',
            theme: theme,
            home: CalculatorHomePage(title: 'Simple Calculator'),
          );
        }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.brightness_3),
                onPressed: () {
                  changeThemeBrightness();
                },
              ),
            ],
          ), 
        ),
        body: Column(
          children: <Widget>[
            CalculationDisplay(value: calculatorString),
            CalculatorButtons(onTap: _onPressed),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        )
    );
  }

  void changeThemeBrightness() {
    DynamicTheme.of(context).setBrightness(
      Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark
      );    
  }

  void _onPressed({String buttonText}) {
    // Standard mathematical operations
    if (Calculations.OPERATIONS.contains(buttonText)) {
      return setState(() {
        operations.add(buttonText);
        calculatorString += " $buttonText ";
      });
    }

    // On CLEAR press
    if (buttonText == Calculations.CLEAR) {
      return setState(() {
        operations.add(Calculations.CLEAR);
        calculatorString = "";
      });
    }

    // On DELETE press
    if (buttonText == Calculations.DELETE) {
      return setState(() {
        operations.add(Calculations.DELETE);
      
        if (calculatorString.length != 0) {
          calculatorString = calculatorString.substring(0, calculatorString.length - 1);
        
        } else {
          calculatorString = "";
        
        }
        
      });
    }

    // On Equals press
    if (buttonText == Calculations.EQUAL) {
      String newCalculatorString = CalculationService.parseString(calculatorString);

      return setState(() {
        if (newCalculatorString != calculatorString) {
          // only add evaluated strings to calculations array
          calculations.add(calculatorString);
        }

        operations.add(Calculations.EQUAL);
        calculatorString = newCalculatorString;
        isNewEquation = false;
      });
    }

    if (buttonText == Calculations.PERIOD) {
      return setState(() {
        calculatorString = CalculationService.addPeriod(calculatorString);
      });
    }

    setState(() {
      if (!isNewEquation
          && operations.length > 0
          && operations.last == Calculations.EQUAL
      ) {
        calculatorString = buttonText;
        isNewEquation = true;
      
      } else {
        calculatorString += buttonText;
      
      }
    });
  }
}